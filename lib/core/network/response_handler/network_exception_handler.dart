import 'dart:io';
import 'package:dio/dio.dart';
import 'api_response.dart';

/// Network exception handler - API hatalarını düzgün şekilde yönetir
class NetworkExceptionHandler {
  /// API çağrılarından gelen exception'ları yakalayıp ApiException'a çevirir
  static Future<T> handleException<T>(Future<T> Function() apiCall) async {
    try {
      return await apiCall();
    } on DioException catch (e) {
      print('DioException: ${e.message}');
      print('DioException Response: ${e.response?.data}');
      print('DioException Status Code: ${e.response?.statusCode}');

      // Dio specific hatalarını handle et
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw ApiException(
            message: 'Bağlantı zaman aşımına uğradı. Lütfen internet bağlantınızı kontrol edin.',
            code: 408,
            status: false,
          );

        case DioExceptionType.badResponse:
          // Hata response'unu parse etmeye çalış
          if (e.response != null) {
            final responseData = e.response!.data;
            print('Bad Response Data: $responseData');

            if (responseData is Map<String, dynamic>) {
              // Senin API'nda hata formatını kontrol et
              // Eğer error field'ı varsa onu kullan
              final errorMessage = responseData['error']?['message']?.toString() ??
                                   responseData['message']?.toString() ??
                                   'Bilinmeyen bir hata oluştu';
              final code = e.response!.statusCode ?? 500;
              
              throw ApiException(
                message: errorMessage.isEmpty ? 'Sunucu hatası oluştu' : errorMessage,
                code: code,
                status: false,
              );
            }
          }
          throw ApiException(
            message: 'Sunucu hatası: ${e.response?.statusMessage ?? 'Bilinmeyen hata'}',
            code: e.response?.statusCode ?? 500,
            status: false,
          );

        case DioExceptionType.cancel:
          throw ApiException(
            message: 'İstek iptal edildi',
            code: 499,
            status: false,
          );

        case DioExceptionType.connectionError:
          throw ApiException(
            message: 'Bağlantı hatası. Lütfen internet bağlantınızı kontrol edin.',
            code: 503,
            status: false,
          );

        default:
          throw ApiException(
            message: e.message ?? 'Bilinmeyen bir hata oluştu',
            code: 500,
            status: false,
          );
      }
    } on SocketException catch (e) {
      print('SocketException: ${e.message}');
      throw ApiException(
        message: 'İnternet bağlantısı yok. Lütfen ağ ayarlarınızı kontrol edin.',
        code: 503,
        status: false,
      );
    } on FormatException catch (e) {
      print('FormatException: ${e.message}');
      throw ApiException(
        message: 'Sunucudan geçersiz veri formatı alındı.',
        code: 422,
        status: false,
      );
    } catch (e, stackTrace) {
      print('Unknown exception: $e');
      print('Stack trace: $stackTrace');
      throw ApiException(
        message: 'Beklenmeyen bir hata oluştu: $e',
        code: 500,
        status: false,
      );
    }
  }

  /// ApiResponse'un başarılı olup olmadığını kontrol eder ve veriyi döner
  static T checkResponse<T>(ApiResponse<T> response) {
    if (response.isSuccess) {
      return response.data;
    } else {
      print('API Response Error: ${response.message}');
      throw ApiException(
        message: response.message.isEmpty ? 'Sunucu hatası oluştu' : response.message,
        code: response.code,
        status: response.status,
      );
    }
  }
} 