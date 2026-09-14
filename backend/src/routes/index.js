import { Router } from 'express';

import { healthRouter } from './health.routes.js';
import { authRouter } from './auth.routes.js';
import { operationsRouter, organizationRouter } from './organization.routes.js';

export const apiRouter = Router();

apiRouter.use('/auth', authRouter);
apiRouter.use('/health', healthRouter);
apiRouter.use(organizationRouter);
apiRouter.use(operationsRouter);
