export const errorHandler = (error, request, response, next) => {
  if (response.headersSent) {
    next(error);
    return;
  }

  response.status(500).json({
    success: false,
    error: {
      code: 'INTERNAL_ERROR',
      message: 'An unexpected error occurred.',
    },
  });
};

