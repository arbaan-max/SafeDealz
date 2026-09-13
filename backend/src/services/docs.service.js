import { readFileSync } from 'node:fs';

const contractUrl = new URL('../../openapi/openapi.json', import.meta.url);
const openApiDocument = JSON.parse(readFileSync(contractUrl, 'utf8'));

export const getOpenApiDocument = () => openApiDocument;
