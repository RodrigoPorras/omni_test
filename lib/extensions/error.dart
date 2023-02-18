import 'package:flutter_omni_test/error/api_error.dart';
import 'package:http/http.dart' as http;

extension NetworkError on http.Response {
  APIError parseError() => APIError.fromHttpError(this);
}
