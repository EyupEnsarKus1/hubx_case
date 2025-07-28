import 'dart:convert';

class ApiResponse<T> {
  final bool status;
  final String message;
  final int code;
  final T data;
  final Map<String, dynamic>? meta;

  ApiResponse({
    required this.status,
    required this.message,
    required this.code,
    required this.data,
    this.meta,
  });

  bool get isSuccess => status && code >= 200 && code < 300;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) {
    const code = 200;
    const message = 'Success';
    const status = true;

    return ApiResponse<T>(
      status: status,
      message: message,
      code: code,
      data: fromJsonT(json['data']),
      meta: json['meta'] as Map<String, dynamic>?,
    );
  }

  factory ApiResponse.fromJsonString(
    String jsonString,
    T Function(dynamic) fromJsonT,
  ) {
    final json = jsonDecode(jsonString);
    return ApiResponse.fromJson(json, fromJsonT);
  }

  factory ApiResponse.fromDirectArray(
    dynamic responseData,
    T Function(dynamic) fromJsonT,
  ) {
    dynamic data = responseData;
    if (responseData is String) {
      data = jsonDecode(responseData);
    }

    const code = 200;
    const message = 'Success';
    const status = true;

    return ApiResponse<T>(
      status: status,
      message: message,
      code: code,
      data: fromJsonT(data),
      meta: null,
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJsonT) {
    final result = <String, dynamic>{
      'response': {
        'code': code,
        'message': message,
      },
      'data': toJsonT(data),
    };

    if (meta != null) {
      result['meta'] = meta;
    }

    return result;
  }
}

extension ApiResponseListExtension<T> on ApiResponse<List<T>> {
  List<R> mapData<R>(R Function(T) mapper) {
    return data.map(mapper).toList();
  }

  int get totalCount => meta?['pagination']?['total'] as int? ?? data.length;
  int get pageCount => meta?['pagination']?['pageCount'] as int? ?? 1;
  int get currentPage => meta?['pagination']?['page'] as int? ?? 1;
}

extension ApiResponseMapExtension<T> on ApiResponse<Map<String, T>> {
  Map<String, R> mapData<R>(R Function(T) mapper) {
    return data.map((key, value) => MapEntry(key, mapper(value)));
  }
}

/// API hatalarını temsil eden exception sınıfı
class ApiException implements Exception {
  final String message;
  final int code;
  final bool status;

  ApiException({
    required this.message,
    required this.code,
    required this.status,
  });

  @override
  String toString() => message;
}

Future<T> throwApiException<T>(Future<T> Function() apiCall) async {
  try {
    return await apiCall();
  } catch (e) {
    if (e is ApiException) {
      rethrow;
    }
    throw ApiException(
      message: e.toString(),
      code: 500,
      status: false,
    );
  }
}
