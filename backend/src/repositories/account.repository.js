import { Account } from '../models/account.model.js';
import { alive } from '../utils/soft-delete.js';

export const findAccountForLogin = (email) => Account.findOne({ email }).select('+passwordHash');
export const findActiveAccountById = (id) => Account.findOne(alive({ _id: id }));
export const findAccountById = (id, options = {}) => {
  const query = Account.findById(id);
  return options.withPassword ? query.select('+passwordHash') : query;
};
export const findAccountByEmail = (email) => Account.findOne({ email });
export const createAccount = (attributes) => Account.create(attributes);
export const listAccounts = (filter) => Account.find(alive(filter)).sort({ displayName: 1, email: 1 });
export const saveAccount = (account) => account.save();
