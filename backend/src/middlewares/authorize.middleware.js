import { ApiError } from '../utils/api-error.js';

export const requireRoles = (...roles) => (request, response, next) => {
  try {
    if (!roles.includes(request.auth?.account?.role)) {
      throw new ApiError(403, 'FORBIDDEN', 'You do not have permission to perform this action.');
    }
    next();
  } catch (error) {
    next(error);
  }
};
