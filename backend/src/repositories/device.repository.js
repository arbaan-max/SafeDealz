import { Device } from '../models/device.model.js';

export const createDevice = (attributes) => Device.create(attributes);
export const findDeviceById = (id) => Device.findById(id);
export const listDevices = (filter) => Device.find(filter).sort({ updatedAt: -1 });
export const saveDevice = (device) => device.save();
