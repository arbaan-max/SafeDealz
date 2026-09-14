import { createHmac, randomUUID } from 'node:crypto';
import { env } from '../config/env.js';
import { createMediaObject, findMediaByKey, saveMediaObject } from '../repositories/media-object.repository.js';
import { findDeviceById } from '../repositories/device.repository.js';
import { ApiError } from '../utils/api-error.js';
import { requireObjectId } from '../utils/ids.js';
import { assertBranchInScope, loadScope } from './scope.service.js';

const purposes = new Set(['front', 'back', 'top', 'bottom', 'left', 'right', 'rotation', 'bill']);
const types = new Set(['image/jpeg', 'image/png', 'video/mp4']);
const r2Ready = () => Boolean(env.r2.accessKeyId && env.r2.secretAccessKey && env.r2.bucket && env.r2.endpoint);

export const r2Configured = r2Ready;

const signStub = (objectKey, contentType, method) => {
  const expires = Date.now() + env.r2.signTtlSeconds * 1000;
  const signature = createHmac('sha256', env.r2.secretAccessKey || env.jwtSecret).update(`${method}:${objectKey}:${expires}`).digest('hex');
  return {
    method,
    url: `${env.r2.endpoint || 'https://r2.local.test'}/${env.r2.bucket || 'safedealz-evidence'}/${objectKey}?expires=${expires}&signature=${signature}`,
    headers: { 'content-type': contentType },
    expiresAt: new Date(expires).toISOString(),
    live: r2Ready(),
  };
};

export const createUploadGrant = async (actor, deviceId, body) => {
  const device = await findDeviceById(requireObjectId(deviceId, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  if (!purposes.has(body.purpose)) throw new ApiError(400, 'VALIDATION_ERROR', 'Select a valid evidence slot.');
  if (!types.has(body.contentType)) throw new ApiError(400, 'VALIDATION_ERROR', 'Unsupported media type.');
  const sizeBytes = Number(body.sizeBytes);
  if (!Number.isInteger(sizeBytes) || sizeBytes < 1 || sizeBytes > 80_000_000) throw new ApiError(400, 'VALIDATION_ERROR', 'Media size is invalid.');
  const objectKey = `devices/${device.id}/${body.purpose}/${randomUUID()}`;
  const media = await createMediaObject({
    deviceId: device.id, branchId: device.branchId, purpose: body.purpose, objectKey,
    contentType: body.contentType, sizeBytes, checksumSha256: String(body.checksumSha256 || ''), status: 'pending',
  });
  return { mediaId: String(media.id), objectKey, upload: signStub(objectKey, body.contentType, 'PUT') };
};

export const completeUpload = async (actor, deviceId, body) => {
  const device = await findDeviceById(requireObjectId(deviceId, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  const media = await findMediaByKey(body.objectKey);
  if (!media || String(media.deviceId) !== String(device.id)) throw new ApiError(404, 'NOT_FOUND', 'Upload grant was not found.');
  if (!/^[a-f0-9]{64}$/i.test(String(body.checksumSha256 || ''))) throw new ApiError(400, 'VALIDATION_ERROR', 'A SHA-256 checksum is required.');
  media.checksumSha256 = body.checksumSha256.toLowerCase();
  media.status = 'uploaded';
  await saveMediaObject(media);
  return { id: String(media.id), purpose: media.purpose, objectKey: media.objectKey, status: media.status };
};

export const createDownloadGrant = async (actor, deviceId, objectKey) => {
  const device = await findDeviceById(requireObjectId(deviceId, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, device.branchId);
  const media = await findMediaByKey(objectKey);
  if (!media || String(media.deviceId) !== String(device.id) || media.status !== 'uploaded') {
    throw new ApiError(404, 'NOT_FOUND', 'Media was not found.');
  }
  return { objectKey, download: signStub(objectKey, media.contentType, 'GET') };
};
