export const publicAccount = (account, extras = {}) => ({
  id: String(account.id ?? account._id),
  email: account.email,
  role: account.role,
  displayName: account.displayName || '',
  phone: account.phone || '',
  active: account.active,
  ...extras,
});

export const maskAccountNumber = (value) => {
  const digits = String(value || '').replace(/\s/g, '');
  if (!digits) return '';
  return `•••• ${digits.slice(-4)}`;
};

export const publicChain = (chain) => ({
  id: String(chain.id),
  name: chain.name,
  code: chain.code,
  contactName: chain.contactName || '',
  contactEmail: chain.contactEmail || '',
  contactPhone: chain.contactPhone || '',
  active: chain.active,
  branchCount: chain.branchCount ?? undefined,
});

export const publicBranch = (branch, options = {}) => ({
  id: String(branch.id),
  chainId: String(branch.chainId),
  name: branch.name,
  code: branch.code,
  address: branch.address || '',
  city: branch.city || '',
  contactName: branch.contactName || '',
  contactPhone: branch.contactPhone || '',
  beneficiaryName: branch.beneficiaryName || '',
  ifsc: branch.ifsc || '',
  accountNumberMasked: maskAccountNumber(branch.accountNumber),
  accountNumber: options.revealAccount ? branch.accountNumber || '' : undefined,
  payoutReady: Boolean(branch.beneficiaryName && branch.accountNumber && branch.ifsc),
  active: branch.active,
});

export const publicAssignedStore = (branch, chain) => ({
  id: String(branch.id),
  chainId: String(branch.chainId),
  name: branch.name,
  code: branch.code,
  address: branch.address || '',
  city: branch.city || '',
  contactName: branch.contactName || '',
  contactPhone: branch.contactPhone || '',
  active: branch.active,
  chainName: chain?.name || '',
  chainCode: chain?.code || '',
});

export const publicWallet = (wallet, options = {}) => ({
  id: String(wallet.id),
  vendorAccountId: String(wallet.vendorAccountId),
  availablePaise: options.hideBalances ? undefined : wallet.availablePaise,
  reservedPaise: options.hideBalances ? undefined : wallet.reservedPaise,
  processingPaise: options.hideBalances ? undefined : (options.processingPaise ?? 0),
  paymentsProcessingPaise: options.hideBalances ? undefined : (options.paymentsProcessingPaise ?? 0),
  currency: 'INR',
});
