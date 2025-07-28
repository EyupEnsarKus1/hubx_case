import 'package:dio/dio.dart';
import 'package:hubx_case/core/network/dependy_injection/injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import '../../utils/api_routes.dart';
import '../custom_logger/custom_logger.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'init', preferRelativeImports: true, asExtension: true)
void configureDependencies() {
  getIt.init();
}

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => _createDioInstance(ApiRoutes.baseUrl);

  Dio _createDioInstance(String baseUrl) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        responseType: ResponseType.json,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          CustomLogger().info('Request[${options.method}] => URL: ${options.uri}');
          CustomLogger().info('Request[${options.method}] => DATA: ${options.data}');
          CustomLogger().info('Request[${options.method}] => CONTENT-TYPE: ${options.contentType}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          CustomLogger().info('Response[${response.statusCode}] => DATA: ${response.data}');
          handler.next(response);
        },
        onError: (DioException error, handler) {
          CustomLogger().error('Error[${error.response?.statusCode}] => MESSAGE: ${error.message}');
          handler.next(error);
        },
      ),
    );

    return dio;
  }
}
