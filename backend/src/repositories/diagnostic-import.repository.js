import { DiagnosticImport } from '../models/diagnostic-import.model.js';

export const createDiagnosticImport = (attributes) => DiagnosticImport.create(attributes);
export const findImportByNonce = (nonce) => DiagnosticImport.findOne({ nonce });
export const findImportByDevice = (deviceId) => DiagnosticImport.findOne({ deviceId }).sort({ importedAt: -1 });
