import express from 'express';

import { notFoundHandler } from './src/middlewares/not-found.middleware.js';
import { errorHandler } from './src/middlewares/error.middleware.js';
import { apiRouter } from './src/routes/index.js';
import { docsRouter } from './src/routes/docs.routes.js';

export const createApp = () => {
  const app = express();

  app.disable('x-powered-by');
  app.use(express.json({ limit: '1mb' }));
  app.use('/api-docs', docsRouter);
  app.use('/api/v1', apiRouter);
  app.use(notFoundHandler);
  app.use(errorHandler);

  return app;
};
