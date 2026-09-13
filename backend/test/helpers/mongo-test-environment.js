import mongoose from 'mongoose';
import { MongoMemoryReplSet } from 'mongodb-memory-server';

export const startMongoTestEnvironment = async () => {
  const replicaSet = await MongoMemoryReplSet.create({
    replSet: { count: 1 },
  });

  await mongoose.connect(replicaSet.getUri(), {
    dbName: 'safedealz_test',
  });

  return async () => {
    await mongoose.disconnect();
    await replicaSet.stop();
  };
};

