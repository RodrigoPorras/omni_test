import 'package:flutter_omni_test/data/remote/networking/configuration/base_client_generator.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/network_options.dart';
import 'package:http/http.dart';

class NetworkCreator {
  final Client _client = Client();

  NetworkCreator();

  Future<Response> request({
    required BaseClientGenerator route,
    NetworkOptions? options,
  }) async {
    final baseRequest = Request(
      route.method.name.toUpperCase(),
      Uri.https(
        route.baseURL!,
        route.path,
        route.queryParameters,
      ),
    );

    baseRequest.body = route.body.toString();
    baseRequest.headers.addAll(options?.headers ?? <String, String>{});

    final streamedResponse = await (_client.send(baseRequest));

    return convertStreamedResponseToResponse(streamedResponse);
  }

  Future<Response> convertStreamedResponseToResponse(
    StreamedResponse streamedResponse,
  ) async {
    final headers = streamedResponse.headers;
    final bodyBytes = await streamedResponse.stream.toBytes();
    final statusCode = streamedResponse.statusCode;
    return Response.bytes(bodyBytes, statusCode, headers: headers);
  }
}
