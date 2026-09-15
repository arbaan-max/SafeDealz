import { Branch } from '../models/branch.model.js';
import { alive } from '../utils/soft-delete.js';

export const createBranch = (attributes) => Branch.create(attributes);
export const findBranchById = (id, options = {}) => {
  const query = Branch.findById(id);
  return options.withAccount ? query.select('+accountNumber') : query;
};
export const listBranches = (filter = {}, options = {}) => {
  const query = Branch.find(alive(filter)).sort({ name: 1 });
  return options.withAccount ? query.select('+accountNumber') : query;
};
export const countBranches = (filter) => Branch.countDocuments(alive(filter));
export const saveBranch = (branch) => branch.save();
