import { Chain } from '../models/chain.model.js';
import { alive } from '../utils/soft-delete.js';

export const createChain = (attributes) => Chain.create(attributes);
export const findChainById = (id) => Chain.findById(id);
export const listChains = (filter = {}) => Chain.find(alive(filter)).sort({ name: 1 });
export const saveChain = (chain) => chain.save();
