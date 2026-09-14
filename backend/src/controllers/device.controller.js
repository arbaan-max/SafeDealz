import { createVisibleDevice, listVisibleDevices, readDeviceSummary, saveInspection, updateVisibleDevice } from '../services/device.service.js';
import { completeUpload, createDownloadGrant, createUploadGrant } from '../services/media.service.js';
import { importDiagnostic } from '../services/diagnostic.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getDevices = wrap(async (request, response) => send(response, await listVisibleDevices(request.auth.account, request.query)));
export const postDevice = wrap(async (request, response) => send(response, await createVisibleDevice(request.auth.account, request.body), 201));
export const getDevice = wrap(async (request, response) => send(response, await readDeviceSummary(request.auth.account, request.params.id)));
export const patchDevice = wrap(async (request, response) => send(response, await updateVisibleDevice(request.auth.account, request.params.id, request.body)));
export const putInspection = wrap(async (request, response) => send(response, await saveInspection(request.auth.account, request.params.id, request.body)));
export const postMediaSign = wrap(async (request, response) => send(response, await createUploadGrant(request.auth.account, request.params.id, request.body), 201));
export const postMediaComplete = wrap(async (request, response) => send(response, await completeUpload(request.auth.account, request.params.id, request.body)));
export const postMediaDownload = wrap(async (request, response) => send(response, await createDownloadGrant(request.auth.account, request.params.id, request.body.objectKey)));
export const postDiagnosticImport = wrap(async (request, response) => send(response, await importDiagnostic(request.auth.account, request.body), 201));
