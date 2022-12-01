import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

class ApiClient extends BaseClient {
  @override
  Future<StreamedResponse> send(BaseRequest request) {
    debugPrint('${request.method} => ${request.url} \n ${request.headers}');
    return request.send().then((value) {
      debugPrint('${value.statusCode} => ${value.reasonPhrase}');
      return value;
    }).catchError((err) async {
      debugPrint(err.toString());

      return StreamedResponse(
          Stream.fromIterable([err.toString().codeUnits]), 500);
    });
  }

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then((value) {
      Logger.root.info(value.body);
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  @override
  Future<Response> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      debugPrint(value.body);
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }
}
