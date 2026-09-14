import { PlatformSettings } from '../models/platform-settings.model.js';

export const getOrCreateSettings = async () => {
  const existing = await PlatformSettings.findOne({ key: 'platform' });
  if (existing) return existing;
  return PlatformSettings.create({ key: 'platform', biddingMinutes: 3, acceptanceMinutes: 10 });
};

export const saveSettings = (settings) => settings.save();
