import assert from 'node:assert/strict';
import test from 'node:test';

import request from 'supertest';

import { createApp } from '../app.js';

test('GET /api/v1/health returns the contract response', async () => {
  const response = await request(createApp()).get('/api/v1/health');

  assert.equal(response.status, 200);
  assert.deepEqual(response.body, {
    success: true,
    data: {
      status: 'ok',
    },
  });
});

test('unknown routes use the standard not-found response', async () => {
  const response = await request(createApp()).get('/api/v1/missing');

  assert.equal(response.status, 404);
  assert.equal(response.body.success, false);
  assert.equal(response.body.error.code, 'NOT_FOUND');
});

test('GET /api-docs/swagger.json serves the canonical contract', async () => {
  const response = await request(createApp()).get('/api-docs/swagger.json');

  assert.equal(response.status, 200);
  assert.equal(response.body.info.title, 'SafeDealz API');
  assert.equal(response.body.paths['/health'].get.operationId, 'getHealth');
});
