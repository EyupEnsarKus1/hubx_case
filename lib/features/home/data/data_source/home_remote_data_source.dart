import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:hubx_case/core/network/response_handler/api_response.dart';
import 'package:hubx_case/core/network/response_handler/network_exception_handler.dart';
import 'package:hubx_case/features/home/data/models/question_model.dart';
import 'package:hubx_case/features/home/data/models/category_model.dart';

import '../../../../core/utils/api_routes.dart';

abstract class HomeRemoteDataSource {
  Future<QuestionListResponseModel> getQuestions();
  Future<CategoryListResponseModel> getCategories();
}

@Injectable(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio _dio;

  HomeRemoteDataSourceImpl(this._dio);

  @override
  Future<QuestionListResponseModel> getQuestions() async {
    return await NetworkExceptionHandler.handleException(() async {
      final response = await _dio.get(ApiRoutes.getQuestions);

      final apiResponse = ApiResponse.fromDirectArray(
        response.data,
        (data) => QuestionListResponseModel.fromJsonList(data),
      );

      return NetworkExceptionHandler.checkResponse(apiResponse);
    });
  }

  @override
  Future<CategoryListResponseModel> getCategories() async {
    return await NetworkExceptionHandler.handleException(() async {
      final response = await _dio.get(ApiRoutes.getCategories);

      // Categories response'u da String olarak geldiği için fromDirectArray kullan
      final apiResponse = ApiResponse.fromDirectArray(
        response.data,
        (data) => CategoryListResponseModel.fromJson(data),
      );

      return NetworkExceptionHandler.checkResponse(apiResponse);
    });
  }
}
