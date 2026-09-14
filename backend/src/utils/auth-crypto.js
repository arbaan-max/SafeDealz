import { createHash, createHmac, randomBytes, randomUUID } from 'node:crypto';
import argon2 from 'argon2';
import { SignJWT, jwtVerify } from 'jose';
import { env } from '../config/env.js';

const jwtKey = new TextEncoder().encode(env.jwtSecret);
export const normalizeEmail = (value) => value.trim().toLowerCase();
export const hashPassword = (value) => argon2.hash(value, { type: argon2.argon2id, memoryCost: 19456, timeCost: 2, parallelism: 1 });
export const verifyPassword = (hash, value) => argon2.verify(hash, value);
export const digestToken = (value) => createHash('sha256').update(value).digest('hex');
export const opaqueToken = () => randomBytes(48).toString('base64url');
export const opaqueId = () => randomUUID();
export const throttleKey = (kind, value) => createHmac('sha256', env.throttleSecret).update(`${kind}:${value}`).digest('hex');

export const signAccessToken = ({ accountId, role, familyId }) => new SignJWT({ role, sid: familyId })
  .setProtectedHeader({ alg: 'HS256' }).setSubject(accountId).setIssuer(env.jwtIssuer)
  .setAudience(env.jwtAudience).setIssuedAt().setExpirationTime(`${env.accessTokenMinutes}m`).sign(jwtKey);

export const verifyAccessToken = async (token) => (await jwtVerify(token, jwtKey, {
  algorithms: ['HS256'], issuer: env.jwtIssuer, audience: env.jwtAudience,
})).payload;
