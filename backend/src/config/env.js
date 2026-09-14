const parsePort = (value) => {
  const port = Number.parseInt(value ?? '5099', 10);

  if (!Number.isInteger(port) || port < 1 || port > 65535) {
    throw new Error('PORT must be an integer between 1 and 65535.');
  }

  return port;
};

const nodeEnv = process.env.NODE_ENV ?? 'development';
const secret = (name, developmentDefault) => {
  const value = process.env[name];
  if (nodeEnv === 'production' && (!value || value.length < 32)) throw new Error(`${name} must contain at least 32 characters in production.`);
  return value ?? developmentDefault;
};

export const env = Object.freeze({
  nodeEnv,
  port: parsePort(process.env.PORT),
  mongoUri:
    process.env.MONGODB_URI ?? 'mongodb://127.0.0.1:27017/safedealz',
  jwtSecret: secret('JWT_SECRET', 'local-development-only-secret-change-me-32'),
  throttleSecret: secret('THROTTLE_SECRET', 'local-throttle-secret-change-me-32'),
  jwtIssuer: process.env.JWT_ISSUER ?? 'safedealz-api',
  jwtAudience: process.env.JWT_AUDIENCE ?? 'safedealz-clients',
  accessTokenMinutes: Number.parseInt(process.env.ACCESS_TOKEN_MINUTES ?? '10', 10),
  refreshTokenDays: Number.parseInt(process.env.REFRESH_TOKEN_DAYS ?? '30', 10),
  allowedWebOrigin: process.env.ALLOWED_WEB_ORIGIN ?? 'http://localhost:4173',
  secureCookies: nodeEnv === 'production',
  r2: Object.freeze({
    accountId: process.env.R2_ACCOUNT_ID ?? '',
    accessKeyId: process.env.R2_ACCESS_KEY_ID ?? '',
    secretAccessKey: process.env.R2_SECRET_ACCESS_KEY ?? '',
    bucket: process.env.R2_BUCKET ?? '',
    endpoint: process.env.R2_ENDPOINT ?? '',
    region: process.env.R2_REGION ?? 'auto',
    signTtlSeconds: Number.parseInt(process.env.R2_SIGN_TTL_SECONDS ?? '60', 10),
  }),
  razorpay: Object.freeze({
    keyId: process.env.RAZORPAY_KEY_ID ?? '',
    keySecret: process.env.RAZORPAY_KEY_SECRET ?? '',
    webhookSecret: process.env.RAZORPAY_WEBHOOK_SECRET ?? '',
  }),
  payout: Object.freeze({
    webhookSecret: process.env.PAYOUT_WEBHOOK_SECRET ?? '',
  }),
  diagnosticQrSecret: secret('DIAGNOSTIC_QR_SECRET', 'local-diagnostic-qr-secret-change-me-32'),
});
