import { acceptAuction, cancelAuction, declineAuction, listAuctionBids, listMyBids, listVisibleAuctions, listVisibleDeals, markDealPickup, placeBid, readAuction, readBid, readDeal, readSettings, rebidAuction, sendDealOtp, startAuction, tickAuctions, updateSettings, verifyDeal } from '../services/auction.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getSettings = wrap(async (request, response) => send(response, await readSettings()));
export const patchSettings = wrap(async (request, response) => send(response, await updateSettings(request.auth.account, request.body)));
export const postDeviceAuction = wrap(async (request, response) => send(response, await startAuction(request.auth.account, request.params.id), 201));
export const getAuctions = wrap(async (request, response) => send(response, await listVisibleAuctions(request.auth.account, request.query)));
export const getAuction = wrap(async (request, response) => send(response, await readAuction(request.auth.account, request.params.id)));
export const postAuctionCancel = wrap(async (request, response) => send(response, await cancelAuction(request.auth.account, request.params.id, request.body)));
export const postAuctionTick = wrap(async (request, response) => send(response, await tickAuctions(request.auth.account)));
export const postAuctionDecline = wrap(async (request, response) => send(response, await declineAuction(request.auth.account, request.params.id, request.body)));
export const postAuctionRebid = wrap(async (request, response) => send(response, await rebidAuction(request.auth.account, request.params.id, request.body)));
export const postAuctionAccept = wrap(async (request, response) => {
  const result = await acceptAuction(request.auth.account, request.params.id);
  send(response, result.deal, result.replayed ? 200 : 201);
});
export const getDeal = wrap(async (request, response) => send(response, await readDeal(request.auth.account, request.params.id)));
export const getDeals = wrap(async (request, response) => send(response, await listVisibleDeals(request.auth.account, request.query)));
export const postDealPickup = wrap(async (request, response) => {
  const result = await markDealPickup(request.auth.account, request.params.id);
  send(response, result.deal);
});
export const getAuctionBids = wrap(async (request, response) => send(response, await listAuctionBids(request.auth.account, request.params.id)));
export const postDealOtp = wrap(async (request, response) => send(response, await sendDealOtp(request.auth.account, request.params.id)));
export const postDealVerify = wrap(async (request, response) => send(response, await verifyDeal(request.auth.account, request.params.id, request.body)));
export const postAuctionBid = wrap(async (request, response) => {
  const result = await placeBid(request.auth.account, request.params.id, request.body);
  send(response, result.bid, result.replayed ? 200 : 201);
});
export const getMyBids = wrap(async (request, response) => send(response, await listMyBids(request.auth.account)));
export const getBid = wrap(async (request, response) => send(response, await readBid(request.auth.account, request.params.id)));
