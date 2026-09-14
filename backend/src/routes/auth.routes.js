import { Router } from 'express';
import { loginAccount, logoutAccount, readCurrentAccount, refreshAccount, getSessions, postSessionRevoke, postPassword } from '../controllers/auth.controller.js';
import { requireAuthentication } from '../middlewares/auth.middleware.js';

export const authRouter = Router();
authRouter.post('/login', loginAccount);
authRouter.post('/refresh', refreshAccount);
authRouter.post('/logout', requireAuthentication, logoutAccount);
authRouter.get('/me', requireAuthentication, readCurrentAccount);
authRouter.get('/sessions', requireAuthentication, getSessions);
authRouter.post('/sessions/:id/revoke', requireAuthentication, postSessionRevoke);
authRouter.post('/password', requireAuthentication, postPassword);
