import { createApp } from './app.js';
import { env } from './src/config/env.js';

const app = createApp();
const server = app.listen(env.port, () => {
  process.stdout.write(`SafeDealz API listening on port ${env.port}\n`);
});

const shutdown = () => {
  server.close((error) => {
    process.exitCode = error ? 1 : 0;
  });
};

process.on('SIGINT', shutdown);
process.on('SIGTERM', shutdown);

