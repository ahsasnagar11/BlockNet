import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class OpenAIChatbotCall {
  static Future<ApiCallResponse> call({
    String? apiKey = 'AIzaSyAT2LXcw6KMC-LYcPhWEHI1B6Y_x07JU3A',
    String? prompt = '',
    String? openaiApiKey = '',
    String? model = 'gemini-1.5-flash',
    dynamic? messagesJson,
  }) async {
    final messages = _serializeJson(messagesJson);
    final ffApiRequestBody = '''
{
  "model": "${escapeStringForJson(model)}",
  "messages": [${messages}]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OpenAI Chatbot',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=API_KEY\"',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? textResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
}

class DeriveCall {
  static Future<ApiCallResponse> call({
    String? equation = '',
  }) async {
    final ffApiRequestBody = '''
{
  "equation": "${escapeStringForJson(equation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'derive',
      apiUrl: 'http://anshu.ip-ddns.com/blockchain/derivative',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? deri(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.derivative''',
      ));
}

class MinimaCall {
  static Future<ApiCallResponse> call({
    String? equation = '',
  }) async {
    final ffApiRequestBody = '''
{
  "equation": "${escapeStringForJson(equation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'minima',
      apiUrl: 'http://anshu.ip-ddns.com/blockchain/minimize',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic minimapoint(dynamic response) => getJsonField(
        response,
        r'''$.minima''',
      );
  static dynamic minimavalue(dynamic response) => getJsonField(
        response,
        r'''$.minima_value''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
