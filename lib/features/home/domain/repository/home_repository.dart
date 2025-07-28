import 'package:hubx_case/features/home/domain/entities/question_entity.dart';
import 'package:hubx_case/features/home/domain/entities/category_entity.dart';

abstract class HomeRepository {
  Future<List<Question>> getQuestions();
  Future<List<Category>> getCategories();
}
