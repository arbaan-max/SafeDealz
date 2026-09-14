let current = () => new Date();

export const now = () => new Date(current());
export const setNow = (value) => {
  current = () => new Date(value);
};
export const resetNow = () => {
  current = () => new Date();
};
export const addMinutes = (date, minutes) => new Date(date.getTime() + minutes * 60_000);
