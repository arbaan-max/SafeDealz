import express from 'express';
import cookieParser from 'cookie-parser';
import { env } from './src/config/env.js';

import { notFoundHandler } from './src/middlewares/not-found.middleware.js';
import { errorHandler } from './src/middlewares/error.middleware.js';
import { requestLog } from './src/middlewares/request-log.middleware.js';
import { apiRouter } from './src/routes/index.js';
import { docsRouter } from './src/routes/docs.routes.js';
import { postRazorpayWebhook } from './src/controllers/recharge.controller.js';
import { postPayoutWebhook } from './src/controllers/payout.controller.js';

export const createApp = () => {
  const app = express();

  app.disable('x-powered-by');
  app.set('trust proxy', 1);
  app.use('/api/v1/webhooks/razorpay', express.raw({ type: '*/*' }), postRazorpayWebhook);
  app.use('/api/v1/webhooks/payout', express.raw({ type: '*/*' }), postPayoutWebhook);
  app.use(express.json({ limit: '1mb' }));
  app.use(cookieParser());
  app.use(requestLog);
  app.use((request, response, next) => {
    if (request.get('origin') === env.allowedWebOrigin) {
      response.set('Access-Control-Allow-Origin', env.allowedWebOrigin);
      response.set('Access-Control-Allow-Credentials', 'true');
      response.set('Access-Control-Allow-Methods', 'GET,POST,PUT,PATCH,DELETE,OPTIONS');
      response.set('Access-Control-Allow-Headers', 'Authorization,Content-Type,X-CSRF-Token');
      response.set('Vary', 'Origin');
    }
    if (request.method === 'OPTIONS') { response.status(204).end(); return; }
    next();
  });
  app.use('/api-docs', docsRouter);
  app.use('/api/v1', apiRouter);
  app.use(notFoundHandler);
  app.use(errorHandler);

  return app;
};
