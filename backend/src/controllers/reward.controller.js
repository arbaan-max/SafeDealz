import { confirmRedemption, listBranchRedemptions, listRewardOverview, publishRewardPolicy, readCustomerRewards, readRedemption, readRewardPolicy, resendRedemptionOtp, startRedemption } from '../services/reward.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getRewardOverview = wrap(async (request, response) => (
  send(response, await listRewardOverview(request.auth.account, request.query))
));
export const getCustomerRewards = wrap(async (request, response) => (
  send(response, await readCustomerRewards(request.auth.account, request.params.phone, request.query))
));
export const getRewardPolicy = wrap(async (request, response) => send(response, await readRewardPolicy(request.auth.account)));
export const postRewardPolicy = wrap(async (request, response) => (
  send(response, await publishRewardPolicy(request.auth.account, request.body), 201)
));
export const getRedemptions = wrap(async (request, response) => (
  send(response, await listBranchRedemptions(request.auth.account, request.query))
));
export const postRedemption = wrap(async (request, response) => (
  send(response, await startRedemption(request.auth.account, request.body), 201)
));
export const getRedemption = wrap(async (request, response) => (
  send(response, await readRedemption(request.auth.account, request.params.id))
));
export const postRedemptionOtp = wrap(async (request, response) => (
  send(response, await resendRedemptionOtp(request.auth.account, request.params.id))
));
export const postRedemptionConfirm = wrap(async (request, response) => (
  send(response, await confirmRedemption(request.auth.account, request.params.id, request.body))
));
