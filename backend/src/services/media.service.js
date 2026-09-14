import { randomUUID } from 'node:crypto';
import { env } from '../config/env.js';
import { createMediaObject, findMediaByDevicePurpose, findMediaByKey, saveMediaObject } from '../repositories/media-object.repository.js';
import { findDeviceById } from '../repositories/device.repository.js';
import { ApiError } from '../utils/api-error.js';
import { requireObjectId } from '../utils/ids.js';
import { assertObjectUploaded, r2Configured, signObjectAccess } from './r2.adapter.js';
import { assertBranchInScope, loadScope } from './scope.service.js';

export { r2Configured };

const purposes = new Set(['front', 'back', 'top', 'bottom', 'left', 'right', 'rotation', 'bill']);
const imageTypes = new Set(['image/jpeg', 'image/png']);

const objectKeyFor = (deviceId, purpose) => `devices/${deviceId}/${purpose}/${randomUUID()}`;
const allowedKey = (deviceId, purpose, objectKey) => new RegExp(`^devices/${deviceId}/${purpose}/[0-9a-f-]{36}$`, 'i').test(objectKey);

const requireDevice = async (actor, deviceId) => {
  const device = await findDeviceById(requireObjectId(deviceId, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  return device;
};

const contentTypeFor = (purpose, contentType) => {
  if (purpose === 'rotation') {
    if (contentType !== 'video/mp4') throw new ApiError(400, 'VALIDATION_ERROR', 'Rotation evidence must be an MP4 video.');
    return contentType;
  }
  if (!imageTypes.has(contentType)) throw new ApiError(400, 'VALIDATION_ERROR', 'Photo evidence must be JPEG or PNG.');
  return contentType;
};

export const createUploadGrant = async (actor, deviceId, body) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can upload evidence.');
  }
  const device = await requireDevice(actor, deviceId);
  if (!purposes.has(body.purpose)) throw new ApiError(400, 'VALIDATION_ERROR', 'Select a valid evidence slot.');
  const contentType = contentTypeFor(body.purpose, body.contentType);
  const sizeBytes = Number(body.sizeBytes);
  if (!Number.isInteger(sizeBytes) || sizeBytes < 1 || sizeBytes > 80_000_000) throw new ApiError(400, 'VALIDATION_ERROR', 'Media size is invalid.');
  const checksumSha256 = String(body.checksumSha256 || '').toLowerCase();
  if (!/^[a-f0-9]{64}$/.test(checksumSha256)) throw new ApiError(400, 'VALIDATION_ERROR', 'A SHA-256 checksum is required.');
  const objectKey = objectKeyFor(device.id, body.purpose);
  const grantExpiresAt = new Date(Date.now() + env.r2.signTtlSeconds * 1000);
  let media = await findMediaByDevicePurpose(device.id, body.purpose);
  if (media) {
    media.objectKey = objectKey;
    media.contentType = contentType;
    media.sizeBytes = sizeBytes;
    media.checksumSha256 = checksumSha256;
    media.status = 'pending';
    media.grantExpiresAt = grantExpiresAt;
    await saveMediaObject(media);
  } else {
    media = await createMediaObject({
      deviceId: device.id,
      branchId: device.branchId,
      purpose: body.purpose,
      objectKey,
      contentType,
      sizeBytes,
      checksumSha256,
      status: 'pending',
      grantExpiresAt,
    });
  }
  return { mediaId: String(media.id), objectKey, upload: await signObjectAccess(objectKey, contentType, 'PUT', grantExpiresAt) };
};

export const completeUpload = async (actor, deviceId, body) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can complete an upload.');
  }
  const device = await requireDevice(actor, deviceId);
  const objectKey = String(body.objectKey || '');
  const media = await findMediaByKey(objectKey);
  if (!media || String(media.deviceId) !== String(device.id)) throw new ApiError(404, 'NOT_FOUND', 'Upload grant was not found.');
  if (!allowedKey(device.id, media.purpose, objectKey)) throw new ApiError(400, 'VALIDATION_ERROR', 'The object key is not allowed.');
  if (media.grantExpiresAt && media.grantExpiresAt.getTime() < Date.now()) {
    throw new ApiError(400, 'SIGNATURE_EXPIRED', 'The upload signature has expired. Capture again.');
  }
  const checksumSha256 = String(body.checksumSha256 || '').toLowerCase();
  if (!/^[a-f0-9]{64}$/.test(checksumSha256) || checksumSha256 !== media.checksumSha256) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'The checksum does not match the signed upload.');
  }
  await assertObjectUploaded(objectKey);
  media.status = 'uploaded';
  await saveMediaObject(media);
  return { id: String(media.id), purpose: media.purpose, objectKey: media.objectKey, status: media.status };
};

export const createDownloadGrant = async (actor, deviceId, objectKey) => {
  const device = await requireDevice(actor, deviceId);
  const media = await findMediaByKey(objectKey);
  if (!media || String(media.deviceId) !== String(device.id) || media.status !== 'uploaded') {
    throw new ApiError(404, 'NOT_FOUND', 'Media was not found.');
  }
  const expiresAt = new Date(Date.now() + env.r2.signTtlSeconds * 1000);
  return { objectKey, download: await signObjectAccess(objectKey, media.contentType, 'GET', expiresAt) };
};
