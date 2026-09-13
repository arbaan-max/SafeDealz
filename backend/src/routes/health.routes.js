import { Router } from 'express';

import { readHealth } from '../controllers/health.controller.js';

export const healthRouter = Router();

healthRouter.get('/', readHealth);

