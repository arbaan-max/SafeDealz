import { getOpenApiDocument } from '../services/docs.service.js';

export const readOpenApiDocument = (request, response) => {
  response.status(200).json(getOpenApiDocument());
};
