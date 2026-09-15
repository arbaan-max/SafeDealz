import { Device } from '../models/device.model.js';

export const createDevice = (attributes) => Device.create(attributes);
export const findDeviceById = (id) => Device.findById(id);
export const listDevices = (filter) => Device.find(filter).sort({ updatedAt: -1 });
export const listDevicesByIds = (ids) => Device.find({ _id: { $in: ids } });
export const saveDevice = (device) => device.save();
export const findImeiConflict = (branchId, imeis, excludeId) => Device.findOne({
  branchId,
  ...(excludeId ? { _id: { $ne: excludeId } } : {}),
  $or: [{ imei1: { $in: imeis } }, { imei2: { $in: imeis } }],
});
