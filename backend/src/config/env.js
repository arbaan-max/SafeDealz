const parsePort = (value) => {
  const port = Number.parseInt(value ?? '5099', 10);

  if (!Number.isInteger(port) || port < 1 || port > 65535) {
    throw new Error('PORT must be an integer between 1 and 65535.');
  }

  return port;
};

export const env = Object.freeze({
  nodeEnv: process.env.NODE_ENV ?? 'development',
  port: parsePort(process.env.PORT),
  mongoUri:
    process.env.MONGODB_URI ?? 'mongodb://127.0.0.1:27017/safedealz',
});

