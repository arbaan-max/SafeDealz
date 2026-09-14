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
});
