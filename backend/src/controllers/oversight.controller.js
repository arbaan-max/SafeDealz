import { exportReports, listAudit, readOverview, readReports, readVendorPerformance } from '../services/oversight.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getOverview = wrap(async (request, response) => send(response, await readOverview(request.auth.account)));
export const getReports = wrap(async (request, response) => send(response, await readReports(request.auth.account, request.query)));
export const postReportExport = wrap(async (request, response) => send(response, await exportReports(request.auth.account, request.body || request.query)));
export const getAudit = wrap(async (request, response) => send(response, await listAudit(request.auth.account, request.query)));
export const getPerformance = wrap(async (request, response) => send(response, await readVendorPerformance(request.auth.account, request.query)));
