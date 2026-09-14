import { createHmac } from 'node:crypto';
import { env } from '../config/env.js';
import { createDiagnosticImport, findImportByNonce } from '../repositories/diagnostic-import.repository.js';
import { findDeviceById, saveDevice } from '../repositories/device.repository.js';
import { ApiError } from '../utils/api-error.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { assertBranchInScope, loadScope } from './scope.service.js';

export const signDiagnosticPayload = (payload) => createHmac('sha256', env.diagnosticQrSecret).update(JSON.stringify(payload)).digest('hex');

export const importDiagnostic = async (actor, body) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can import diagnostic results.');
  }
  const payload = body.payload && typeof body.payload === 'object' ? body.payload : null;
  if (!payload?.nonce || !payload.imei1 || !payload.imei2) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Diagnostic payload is incomplete.');
  }
  if (typeof body.signature !== 'string' || signDiagnosticPayload(payload) !== body.signature) {
    throw new ApiError(400, 'DIAGNOSTIC_INVALID', 'Diagnostic signature is invalid.');
  }
  if (payload.expiresAt && new Date(payload.expiresAt) <= new Date()) throw new ApiError(400, 'DIAGNOSTIC_EXPIRED', 'Diagnostic QR has expired.');
  if (await findImportByNonce(payload.nonce)) throw new ApiError(409, 'CONFLICT', 'This diagnostic result was already imported.');
  const device = await findDeviceById(requireObjectId(body.deviceId, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  if (device.platform !== 'android') throw new ApiError(400, 'VALIDATION_ERROR', 'Apple devices do not import diagnostics.');
  if (device.imei1 !== payload.imei1 || device.imei2 !== payload.imei2) {
    throw new ApiError(400, 'DIAGNOSTIC_MISMATCH', 'Diagnostic IMEIs do not match this device.');
  }
  try {
    const imported = await createDiagnosticImport({
      deviceId: device.id,
      branchId: device.branchId,
      nonce: payload.nonce,
      imei1: payload.imei1,
      imei2: payload.imei2,
      payload,
      importedByAccountId: actor.id,
    });
    device.diagnosticImportId = imported.id;
    device.status = 'ready_for_auction';
    await saveDevice(device);
    return { id: String(imported.id), deviceId: String(device.id), status: device.status };
  } catch (error) {
    if (duplicateError(error)) throw new ApiError(409, 'CONFLICT', 'This diagnostic result was already imported.');
    throw error;
  }
};
