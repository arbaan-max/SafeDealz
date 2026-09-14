import { Account } from '../models/account.model.js';

export const findAccountForLogin = (email) => Account.findOne({ email }).select('+passwordHash');
export const findActiveAccountById = (id) => Account.findById(id);
