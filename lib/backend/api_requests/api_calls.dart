import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class VerHotelesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'verHoteles',
      apiUrl:
          'https://api.sheety.co/73768a2e61dd22e23d68ba04191f174e/hoteles/hoja1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic hoja(dynamic response) => getJsonField(
        response,
        r'''$.hoja1''',
        true,
      );
  static dynamic ratingint(dynamic response) => getJsonField(
        response,
        r'''$.hoja1[:].id''',
        true,
      );
  static dynamic imagen(dynamic response) => getJsonField(
        response,
        r'''$.hoja1[:].imagen''',
        true,
      );
  static dynamic dir(dynamic response) => getJsonField(
        response,
        r'''$.hoja1[:].direccion''',
        true,
      );
  static dynamic telefono(dynamic response) => getJsonField(
        response,
        r'''$.hoja1[:].telefono''',
        true,
      );
  static dynamic descripcion(dynamic response) => getJsonField(
        response,
        r'''$.hoja1[:].descripción''',
        true,
      );
  static dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.hoja1[:].nombre''',
        true,
      );
  static dynamic ratingfloat(dynamic response) => getJsonField(
        response,
        r'''$.hoja1[:].estrellas''',
        true,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
