import assert from 'node:assert/strict';
import { after, before, beforeEach, test } from 'node:test';
import mongoose from 'mongoose';

import { AuditEvent } from '../src/models/audit-event.model.js';
import { OutboxEvent } from '../src/models/outbox-event.model.js';
import * as auditRepository from '../src/repositories/audit-event.repository.js';
import { createAuditEvent } from '../src/repositories/audit-event.repository.js';
import { createOutboxEvent } from '../src/repositories/outbox-event.repository.js';
import { startMongoTestEnvironment } from './helpers/mongo-test-environment.js';

let stopMongo;
before(async () => { stopMongo = await startMongoTestEnvironment(); });
after(async () => { await stopMongo(); });
beforeEach(async () => { await Promise.all([AuditEvent.deleteMany({}), OutboxEvent.deleteMany({})]); });

const actorId = new mongoose.Types.ObjectId();
const audit = { actorId, actorRole: 'super_admin', action: 'foundation.proved', entityType: 'system', entityId: 'p01' };
const outbox = { topic: 'foundation.proved', aggregateType: 'system', aggregateId: 'p01', idempotencyKey: 'p01-foundation-proved', payload: { phase: 'P01' } };

test('commits an audit and outbox event atomically', async () => {
  await mongoose.connection.transaction(async (session) => {
    await createAuditEvent(audit, { session });
    await createOutboxEvent(outbox, { session });
  });
  assert.equal(await AuditEvent.countDocuments(), 1);
  assert.equal(await OutboxEvent.countDocuments(), 1);
});

test('rolls both records back when the transaction fails', async () => {
  await assert.rejects(mongoose.connection.transaction(async (session) => {
    await createAuditEvent(audit, { session });
    await createOutboxEvent(outbox, { session });
    throw new Error('rollback');
  }), /rollback/);
  assert.equal(await AuditEvent.countDocuments(), 0);
  assert.equal(await OutboxEvent.countDocuments(), 0);
});

test('enforces unique outbox idempotency keys', async () => {
  await OutboxEvent.syncIndexes();
  await createOutboxEvent(outbox);
  await assert.rejects(createOutboxEvent(outbox), (error) => error?.code === 11000);
});

test('audit repository exposes creation without mutation methods', () => {
  assert.equal(typeof createAuditEvent, 'function');
  assert.deepEqual(Object.keys(auditRepository).sort(), ['createAuditEvent']);
});
