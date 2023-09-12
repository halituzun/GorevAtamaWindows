import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start AnaDataServisler Group Code

class AnaDataServislerGroup {
  static String baseUrl = 'http://195.175.79.78:1011/api';
  static Map<String, String> headers = {};
  static SPPersonellerGetirCall sPPersonellerGetirCall =
      SPPersonellerGetirCall();
  static SpmevcutgorevlerCall spmevcutgorevlerCall = SpmevcutgorevlerCall();
  static TksektorlistCall tksektorlistCall = TksektorlistCall();
  static SpsektorreyonlisthepsiCall spsektorreyonlisthepsiCall =
      SpsektorreyonlisthepsiCall();
  static TkgorevsilCall tkgorevsilCall = TkgorevsilCall();
  static GorevsilCall gorevsilCall = GorevsilCall();
  static TkreyonatamasiyapCall tkreyonatamasiyapCall = TkreyonatamasiyapCall();
  static TksektoratamasiyapCall tksektoratamasiyapCall =
      TksektoratamasiyapCall();
  static TkpersonelgorevsilCall tkpersonelgorevsilCall =
      TkpersonelgorevsilCall();
}

class SPPersonellerGetirCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'SPPersonellerGetir',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/personelgetir',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SpmevcutgorevlerCall {
  Future<ApiCallResponse> call({
    String? perkodu = '0',
  }) {
    final ffApiRequestBody = '''
{
  "perkodu": "${perkodu}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SPMEVCUTGOREVLER',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/gorevgetir',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TksektorlistCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'TKSEKTORLIST',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/sektorgetir',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SpsektorreyonlisthepsiCall {
  Future<ApiCallResponse> call({
    String? perkodu = '',
    String? sektorkodu = '',
  }) {
    final ffApiRequestBody = '''
{
  "perkodu": "${perkodu}",
  "sektorkodu": "${sektorkodu}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SPSEKTORREYONLISTHEPSI',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/reyongetir',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TkgorevsilCall {
  Future<ApiCallResponse> call({
    String? personelkodu = '',
    String? reyonkodu = '',
  }) {
    final ffApiRequestBody = '''
{
  "perkodu": "${personelkodu}",
  "reyonkodu": "${reyonkodu}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TKGOREVSIL',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/gorevsil',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GorevsilCall {
  Future<ApiCallResponse> call({
    String? personelkodu = '0',
    String? reyonkodu = '0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'gorevsil',
      apiUrl:
          '${AnaDataServislerGroup.baseUrl}/personel-gorev/${personelkodu}/${reyonkodu}',
      callType: ApiCallType.DELETE,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TkreyonatamasiyapCall {
  Future<ApiCallResponse> call({
    String? sektorkodu = '',
    String? reyonkodu = '',
    String? perkodu = '',
  }) {
    final ffApiRequestBody = '''
{
  "sektorkodu": "${sektorkodu}",
  "reyonkodu": "${reyonkodu}",
  "perkodu": "${perkodu}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TKREYONATAMASIYAP',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/gorevata',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TksektoratamasiyapCall {
  Future<ApiCallResponse> call({
    String? sektorkodu = '',
    String? perkodu = '',
  }) {
    final ffApiRequestBody = '''
{
   
    "sektorkodu": "50.12",
     "perkodu": "1903"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'TKSEKTORATAMASIYAP',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/gorevsektorata',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TkpersonelgorevsilCall {
  Future<ApiCallResponse> call({
    String? perkodu = '',
  }) {
    final ffApiRequestBody = '''
{
  "perkodu": "${perkodu}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TKPERSONELGOREVSIL',
      apiUrl: '${AnaDataServislerGroup.baseUrl}/gorevkomplesil',
      callType: ApiCallType.POST,
      headers: {
        ...AnaDataServislerGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End AnaDataServisler Group Code

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
