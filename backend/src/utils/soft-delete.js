export const alive = (filter = {}) => (
  Object.prototype.hasOwnProperty.call(filter, 'isDeleted') ? filter : { ...filter, isDeleted: { $ne: true } }
);
