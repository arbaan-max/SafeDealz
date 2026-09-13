import { getHealth } from '../services/health.service.js';

export const readHealth = (request, response) => {
  response.status(200).json({
    success: true,
    data: getHealth(),
  });
};

