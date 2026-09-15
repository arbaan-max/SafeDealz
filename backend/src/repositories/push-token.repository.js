import { PushToken } from '../models/push-token.model.js';

export const upsertPushToken = (accountId, attributes) => PushToken.findOneAndUpdate(
  { token: attributes.token },
  { $set: { accountId, platform: attributes.platform, client: attributes.client } },
  { upsert: true, returnDocument: 'after', setDefaultsOnInsert: true },
);

export const listPushTokensForAccount = (accountId) => PushToken.find({ accountId });
export const deletePushToken = (token) => PushToken.deleteOne({ token });
export const deletePushTokens = (tokens) => PushToken.deleteMany({ token: { $in: tokens } });
