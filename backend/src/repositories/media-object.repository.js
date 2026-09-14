import { MediaObject } from '../models/media-object.model.js';

export const createMediaObject = (attributes) => MediaObject.create(attributes);
export const findMediaByKey = (objectKey) => MediaObject.findOne({ objectKey });
export const findMediaByDevicePurpose = (deviceId, purpose) => MediaObject.findOne({ deviceId, purpose });
export const listMediaForDevice = (deviceId) => MediaObject.find({ deviceId, status: 'uploaded' });
export const saveMediaObject = (media) => media.save();
