import { env } from '../config/env.js';

const shouldLog = () => env.nodeEnv !== 'test';

export const requestLog = (request, response, next) => {
  if (!shouldLog()) {
    next();
    return;
  }

  const started = Date.now();
  response.on('finish', () => {
    const path = request.originalUrl || request.url;
    process.stdout.write(
      `${response.statusCode} - ${request.method} ${path} (${Date.now() - started}ms)\n`,
    );
  });
  next();
};
