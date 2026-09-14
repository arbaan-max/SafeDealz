import mongoose from 'mongoose';
import { createApp } from './app.js';
import { env } from './src/config/env.js';

const app = createApp();

const swaggerUrl = `http://localhost:${env.port}/api-docs/swagger.json`;

mongoose.connection.on('connected', () => {
  process.stdout.write(`MongoDB connected (${env.mongoUri})\n`);
});
mongoose.connection.on('disconnected', () => {
  process.stdout.write('MongoDB disconnected\n');
});
mongoose.connection.on('error', (error) => {
  process.stdout.write(`MongoDB error: ${error.message}\n`);
});

const start = async () => {
  try {
    await mongoose.connect(env.mongoUri);
  } catch (error) {
    process.stdout.write(`MongoDB not connected: ${error.message}\n`);
  }

  const server = app.listen(env.port, '127.0.0.1', () => {
    process.stdout.write(`SafeDealz API listening on http://127.0.0.1:${env.port}\n`);
    process.stdout.write(`Swagger JSON: ${swaggerUrl}\n`);
  });

  const shutdown = async () => {
    server.close();
    try {
      await mongoose.disconnect();
    } finally {
      process.exit(0);
    }
  };

  process.on('SIGINT', shutdown);
  process.on('SIGTERM', shutdown);
};

start().catch((error) => {
  process.stderr.write(`${error.message}\n`);
  process.exit(1);
});