export const errorHandler = (error, request, response, next) => {
  if (response.headersSent) {
    next(error);
    return;
  }

  if (error.retryAfter) response.set('Retry-After', String(error.retryAfter));
  response.status(error.status ?? 500).json({
    success: false,
    error: {
      code: error.code ?? 'INTERNAL_ERROR',
      message: error.status ? error.message : 'An unexpected error occurred.',
    },
  });
};
