import 'dart:convert';

import 'package:http/http.dart';

class NetworkDecoder {
  K decode<T, K>({
    required Response response,
    required dynamic Function(Map<String, dynamic> json) fromMap,
  }) {
    try {
      final jsonResponse = json.decode(response.body);

      if (jsonResponse is List) {
        final list = jsonResponse;
        final dataList = List<T>.from(
          list.map((item) => fromMap(item)).toList(),
        ) as K;
        return dataList;
      } else {
        return fromMap(
           response.body as Map<String,dynamic>,
        ) as K;
      }
    } on TypeError {
      rethrow;
    }
  }
}
