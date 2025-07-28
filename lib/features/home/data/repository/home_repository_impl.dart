import 'package:injectable/injectable.dart';
import 'package:hubx_case/core/network/response_handler/network_exception_handler.dart';
import 'package:hubx_case/features/home/data/data_source/home_remote_data_source.dart';
import 'package:hubx_case/features/home/domain/entities/question_entity.dart';
import 'package:hubx_case/features/home/domain/entities/category_entity.dart';
import 'package:hubx_case/features/home/domain/repository/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Question>> getQuestions() async {
    return await NetworkExceptionHandler.handleException(() async {
      final response = await _remoteDataSource.getQuestions();
      return response.questions.cast<Question>();
    });
  }

  @override
  Future<List<Category>> getCategories() async {
    return await NetworkExceptionHandler.handleException(() async {
      final response = await _remoteDataSource.getCategories();
      return response.data.map((categoryModel) => categoryModel.toEntity()).toList();
    });
  }
}
