import { publicCatalog } from '../services/inspection-catalog.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getCatalog = wrap(async (_request, response) => send(response, publicCatalog()));
