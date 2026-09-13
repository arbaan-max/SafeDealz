export const notFoundHandler = (request, response) => {
  response.status(404).json({
    success: false,
    error: {
      code: 'NOT_FOUND',
      message: 'Resource not found.',
    },
  });
};

