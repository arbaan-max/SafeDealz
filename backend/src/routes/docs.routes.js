import { Router } from 'express';

import { readOpenApiDocument } from '../controllers/docs.controller.js';

export const docsRouter = Router();

docsRouter.get('/swagger.json', readOpenApiDocument);
