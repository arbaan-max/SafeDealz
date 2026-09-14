import mongoose from 'mongoose';
import { ApiError } from './api-error.js';

export const isObjectId = (value) => typeof value === 'string' && /^[a-fA-F0-9]{24}$/.test(value);
export const requireObjectId = (value, label = 'id') => {
  if (!isObjectId(value)) throw new ApiError(400, 'VALIDATION_ERROR', `A valid ${label} is required.`);
  return new mongoose.Types.ObjectId(value);
};
export const duplicateError = (error) => error?.code === 11000;
