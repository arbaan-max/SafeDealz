import { Router } from 'express';
import { loginAccount, logoutAccount, readCurrentAccount, refreshAccount } from '../controllers/auth.controller.js';
import { requireAuthentication } from '../middlewares/auth.middleware.js';

export const authRouter = Router();
authRouter.post('/login', loginAccount);
authRouter.post('/refresh', refreshAccount);
authRouter.post('/logout', requireAuthentication, logoutAccount);
authRouter.get('/me', requireAuthentication, readCurrentAccount);
