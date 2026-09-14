import {
  createAdmin, createVisibleBranch, createVisibleChain, listAdmins, listAssignedStores, listVisibleBranches, listVisibleChains,
  updateAdmin, updateVisibleBranch, updateVisibleChain,
} from '../services/organization.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const listChains = wrap(async (request, response) => send(response, await listVisibleChains(request.auth.account)));
export const postChain = wrap(async (request, response) => send(response, await createVisibleChain(request.auth.account, request.body), 201));
export const patchChain = wrap(async (request, response) => send(response, await updateVisibleChain(request.auth.account, request.params.id, request.body)));
export const listBranches = wrap(async (request, response) => send(response, await listVisibleBranches(request.auth.account)));
export const postBranch = wrap(async (request, response) => send(response, await createVisibleBranch(request.auth.account, request.body), 201));
export const patchBranch = wrap(async (request, response) => send(response, await updateVisibleBranch(request.auth.account, request.params.id, request.body)));
export const getAdmins = wrap(async (request, response) => send(response, await listAdmins(request.auth.account)));
export const postAdmin = wrap(async (request, response) => send(response, await createAdmin(request.auth.account, request.body), 201));
export const patchAdmin = wrap(async (request, response) => send(response, await updateAdmin(request.auth.account, request.params.id, request.body)));
export const getAssignedStores = wrap(async (request, response) => send(response, await listAssignedStores(request.auth.account)));
