import { createAuditEvent } from '../repositories/audit-event.repository.js';
import { createDevice, findDeviceById, findImeiConflict, listDevices, saveDevice } from '../repositories/device.repository.js';
import { listMediaForDevice } from '../repositories/media-object.repository.js';
import { findImportByDevice } from '../repositories/diagnostic-import.repository.js';
import { findBranchById } from '../repositories/branch.repository.js';
import { ApiError } from '../utils/api-error.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { assertBranchInScope, loadScope } from './scope.service.js';
import { inspectionFields, requiredInspectionKeys, storageOptions, ramOptions, catalogVersion, billAgeExemptOption } from './inspection-catalog.js';

const storages = new Set(storageOptions);
const rams = new Set(ramOptions);
const imei = (value, label) => {
  const digits = String(value ?? '').trim();
  if (!/^\d{15}$/.test(digits)) throw new ApiError(400, 'VALIDATION_ERROR', `${label} must be 15 digits.`);
  return digits;
};
const statuses = new Set(['draft', 'inspecting', 'awaiting_diagnostics', 'ready_for_auction', 'live', 'awaiting_acceptance', 'needs_reauction', 'accepted', 'awaiting_pickup', 'picked_up']);
const publicDevice = (device, extras = {}) => ({
  id: String(device.id),
  branchId: String(device.branchId),
  platform: device.platform,
  model: device.model,
  imei1: device.imei1,
  imei2: device.imei2,
  storage: device.storage,
  ram: device.ram || '',
  batteryHealth: device.batteryHealth ?? null,
  status: device.status,
  inspection: device.inspection,
  diagnosticImportId: device.diagnosticImportId ? String(device.diagnosticImportId) : null,
  catalogVersion: device.catalogVersion || null,
  createdAt: device.createdAt,
  updatedAt: device.updatedAt,
  ...extras,
});

const sanitizeAnswers = (raw, platform) => {
  if (!raw || typeof raw !== 'object' || Array.isArray(raw)) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Inspection answers must be an object.');
  }
  const rgb = ['whiteScreen', 'redScreen', 'greenScreen', 'blueScreen', 'colourScreen'];
  if (rgb.some((key) => key in raw)) throw new ApiError(400, 'VALIDATION_ERROR', 'Colour-screen inspection is not used.');
  const answers = {};
  for (const [key, value] of Object.entries(raw)) {
    const field = inspectionFields[key];
    if (!field) throw new ApiError(400, 'VALIDATION_ERROR', `Unknown inspection field (${key}).`);
    if (field.appleOnly && platform !== 'apple') throw new ApiError(400, 'VALIDATION_ERROR', 'Apple parts apply only to Apple devices.');
    if (typeof value !== 'string' || !field.options.includes(value)) {
      throw new ApiError(400, 'VALIDATION_ERROR', `Choose a valid answer for ${field.label}.`);
    }
    answers[key] = value;
  }
  return answers;
};

export const listVisibleDevices = async (actor, query = {}) => {
  const scope = await loadScope(actor);
  const filter = {};
  for (const [key, value] of Object.entries(query)) {
    if (!['status', 'branchId'].includes(key) || typeof value !== 'string') {
      throw new ApiError(400, 'VALIDATION_ERROR', 'Unknown device filter.');
    }
  }
  if (query.branchId != null) {
    assertBranchInScope(scope, query.branchId);
    filter.branchId = query.branchId;
  } else if (!scope.all) filter.branchId = { $in: scope.branchIds };
  if (query.status != null) {
    if (!statuses.has(query.status)) {
      throw new ApiError(400, 'VALIDATION_ERROR', 'Unknown device filter.');
    }
    filter.status = query.status;
  }
  if (actor.role === 'vendor') {
    filter.status = query.status && query.status === 'ready_for_auction' ? 'ready_for_auction' : 'ready_for_auction';
  }
  return (await listDevices(filter)).map((device) => publicDevice(device));
};

export const createVisibleDevice = async (actor, body) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can create a device draft.');
  }
  const scope = await loadScope(actor);
  const branchId = requireObjectId(body.branchId, 'branch id');
  assertBranchInScope(scope, branchId);
  const branch = await findBranchById(branchId);
  if (!branch?.active) throw new ApiError(400, 'VALIDATION_ERROR', 'The assigned branch is not available.');
  const platform = body.platform === 'apple' || body.platform === 'android' ? body.platform : null;
  if (!platform) throw new ApiError(400, 'VALIDATION_ERROR', 'Select Apple or Android.');
  const imei1 = imei(body.imei1, 'IMEI 1');
  const imei2 = imei(body.imei2, 'IMEI 2');
  if (imei1 === imei2) throw new ApiError(400, 'VALIDATION_ERROR', 'IMEI 1 and IMEI 2 must be different.');
  if (!storages.has(body.storage)) throw new ApiError(400, 'VALIDATION_ERROR', 'Select a supported storage size.');
  if (platform === 'android' && !rams.has(body.ram)) throw new ApiError(400, 'VALIDATION_ERROR', 'Select a supported RAM size.');
  if (platform === 'apple' && body.ram) throw new ApiError(400, 'VALIDATION_ERROR', 'Apple devices do not have a RAM selector.');
  const model = String(body.model || '').trim();
  if (!model) throw new ApiError(400, 'VALIDATION_ERROR', 'Enter the device model.');
  if (platform === 'apple') {
    const health = Number(body.batteryHealth);
    if (!Number.isInteger(health) || health < 1 || health > 100) throw new ApiError(400, 'VALIDATION_ERROR', 'Enter Apple battery health from 1 to 100.');
  }
  if (await findImeiConflict(branchId, [imei1, imei2])) {
    throw new ApiError(409, 'CONFLICT', 'A device with this IMEI already exists at the branch.');
  }
  try {
    const device = await createDevice({
      branchId,
      createdByAccountId: actor.id,
      platform,
      model,
      imei1,
      imei2,
      storage: body.storage,
      ram: platform === 'android' ? body.ram : '',
      batteryHealth: platform === 'apple' ? Number(body.batteryHealth) : undefined,
      catalogVersion,
      status: 'draft',
    });
    await createAuditEvent({ actorId: actor.id, actorRole: actor.role, action: 'device.created', entityType: 'device', entityId: String(device.id), storeId: branchId, metadata: { platform } });
    return publicDevice(device);
  } catch (error) {
    if (duplicateError(error)) throw new ApiError(409, 'CONFLICT', 'A device with this IMEI already exists at the branch.');
    throw error;
  }
};

export const updateVisibleDevice = async (actor, id, body) => {
  const device = await findDeviceById(requireObjectId(id, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  if (body.model) device.model = String(body.model).trim();
  if (body.imei1) device.imei1 = imei(body.imei1, 'IMEI 1');
  if (body.imei2) device.imei2 = imei(body.imei2, 'IMEI 2');
  if (device.imei1 === device.imei2) throw new ApiError(400, 'VALIDATION_ERROR', 'IMEI 1 and IMEI 2 must be different.');
  if (body.storage) {
    if (!storages.has(body.storage)) throw new ApiError(400, 'VALIDATION_ERROR', 'Select a supported storage size.');
    device.storage = body.storage;
  }
  if (device.platform === 'android' && body.ram) {
    if (!rams.has(body.ram)) throw new ApiError(400, 'VALIDATION_ERROR', 'Select a supported RAM size.');
    device.ram = body.ram;
  }
  if (device.platform === 'apple' && body.ram) throw new ApiError(400, 'VALIDATION_ERROR', 'Apple devices do not have a RAM selector.');
  if (device.platform === 'apple' && body.batteryHealth !== undefined) {
    const health = Number(body.batteryHealth);
    if (!Number.isInteger(health) || health < 1 || health > 100) throw new ApiError(400, 'VALIDATION_ERROR', 'Enter Apple battery health from 1 to 100.');
    device.batteryHealth = health;
  }
  if (await findImeiConflict(device.branchId, [device.imei1, device.imei2], device.id)) {
    throw new ApiError(409, 'CONFLICT', 'A device with this IMEI already exists at the branch.');
  }
  try { await saveDevice(device); } catch (error) {
    if (duplicateError(error)) throw new ApiError(409, 'CONFLICT', 'A device with this IMEI already exists at the branch.');
    throw error;
  }
  return publicDevice(device);
};

export const saveInspection = async (actor, id, body) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can save an inspection.');
  }
  const device = await findDeviceById(requireObjectId(id, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  const incoming = sanitizeAnswers(body.answers ?? {}, device.platform);
  const previous = device.inspection?.answers && typeof device.inspection.answers === 'object' ? device.inspection.answers : {};
  const answers = { ...previous, ...incoming };
  const required = requiredInspectionKeys(device.platform);
  const missing = required.filter((key) => !answers[key]);
  if (missing.length && body.complete) throw new ApiError(400, 'VALIDATION_ERROR', `Complete every inspection field before finishing (${missing[0]}).`);
  const age = answers.deviceAge;
  const needsBill = Boolean(age && age !== billAgeExemptOption);
  if (body.complete) {
    for (const lock of ['account', 'country', 'finance']) {
      if (answers[lock] === 'Locked') throw new ApiError(400, 'VALIDATION_ERROR', 'Resolve the account, country or finance lock before continuing.');
    }
    if (needsBill && answers.bill !== 'Yes') throw new ApiError(400, 'VALIDATION_ERROR', 'Devices below 11 months require Bill.');
    const media = await listMediaForDevice(device.id);
    const purposes = new Set(media.map((item) => item.purpose));
    const requiredMedia = ['front', 'back', 'top', 'bottom', 'left', 'right', 'rotation'];
    if (needsBill) requiredMedia.push('bill');
    const missingMedia = requiredMedia.filter((purpose) => !purposes.has(purpose));
    if (missingMedia.length) throw new ApiError(400, 'VALIDATION_ERROR', `Capture required evidence before finishing (${missingMedia[0]}).`);
    device.status = device.platform === 'apple' ? 'ready_for_auction' : 'awaiting_diagnostics';
  } else if (device.status === 'draft') {
    device.status = 'inspecting';
  }
  device.inspection = {
    answers,
    source: 'store_manual',
    updatedAt: new Date().toISOString(),
    complete: Boolean(body.complete) || Boolean(device.inspection?.complete),
    billRequired: needsBill,
  };
  if (body.complete) device.inspection.complete = true;
  await saveDevice(device);
  return publicDevice(device);
};

export const readDeviceSummary = async (actor, id) => {
  const device = await findDeviceById(requireObjectId(id, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  const media = await listMediaForDevice(device.id);
  const diagnostic = await findImportByDevice(device.id);
  return publicDevice(device, {
    media: media.map((item) => ({ id: String(item.id), purpose: item.purpose, objectKey: item.objectKey, contentType: item.contentType, sizeBytes: item.sizeBytes })),
    diagnostic: diagnostic ? { id: String(diagnostic.id), payload: diagnostic.payload, importedAt: diagnostic.importedAt } : (device.platform === 'apple' ? { status: 'not_applicable' } : { status: 'pending' }),
    auctionEligible: device.platform === 'apple' ? device.status === 'ready_for_auction' : Boolean(diagnostic) && device.status === 'ready_for_auction',
  });
};
