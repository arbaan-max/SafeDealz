export class ApiError extends Error {
  constructor(status, code, message, options = {}) {
    super(message);
    this.status = status;
    this.code = code;
    this.retryAfter = options.retryAfter;
  }
}
