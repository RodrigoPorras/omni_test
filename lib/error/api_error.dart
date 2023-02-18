import 'package:http/http.dart' as http;

class APIError implements Exception {
  int? statusCode;
  String? detail;

  APIError({
    this.statusCode,
    this.detail,
  });

  factory APIError.fromHttpError(http.Response errorResponse) {
    return APIError(
        statusCode: errorResponse.statusCode, detail: errorResponse.body);
  }
}
