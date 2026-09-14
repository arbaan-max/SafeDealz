import { createManager, createVendor, linkVendor, listManagers, listVendors, updateManager, updateVendor } from '../services/staff.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getManagers = wrap(async (request, response) => send(response, await listManagers(request.auth.account)));
export const postManager = wrap(async (request, response) => send(response, await createManager(request.auth.account, request.body), 201));
export const patchManager = wrap(async (request, response) => send(response, await updateManager(request.auth.account, request.params.id, request.body)));
export const getVendors = wrap(async (request, response) => send(response, await listVendors(request.auth.account)));
export const postVendor = wrap(async (request, response) => send(response, await createVendor(request.auth.account, request.body), 201));
export const postVendorLink = wrap(async (request, response) => send(response, await linkVendor(request.auth.account, request.body)));
export const patchVendor = wrap(async (request, response) => send(response, await updateVendor(request.auth.account, request.params.id, request.body)));
