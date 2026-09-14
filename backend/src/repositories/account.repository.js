import { Account } from '../models/account.model.js';

export const findAccountForLogin = (email) => Account.findOne({ email }).select('+passwordHash');
export const findActiveAccountById = (id) => Account.findById(id);
export const findAccountById = (id, options = {}) => {
  const query = Account.findById(id);
  return options.withPassword ? query.select('+passwordHash') : query;
};
export const findAccountByEmail = (email) => Account.findOne({ email });
export const createAccount = (attributes) => Account.create(attributes);
export const listAccounts = (filter) => Account.find(filter).sort({ displayName: 1, email: 1 });
export const saveAccount = (account) => account.save();
