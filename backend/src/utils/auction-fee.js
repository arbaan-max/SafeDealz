export const platformFee = (bidPaise) => {
  const rupees = bidPaise / 100;
  const rate = rupees <= 20000 ? 0.08 : rupees <= 30000 ? 0.07 : 0.06;
  return { rate, feePaise: Math.round(bidPaise * rate) };
};
