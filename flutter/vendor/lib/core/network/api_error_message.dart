import 'package:dio/dio.dart';

String apiErrorMessage(Object error) {
  if (error is DioException) {
    final data = error.response?.data;
    final body = data is Map ? data['error'] : null;
    if (body is Map && body['message'] != null) {
      return body['message'].toString();
    }
  }
  return 'Unable to continue. Try again.';
}
