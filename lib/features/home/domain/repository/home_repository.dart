import 'package:hubx_case/features/home/domain/entities/question_entity.dart';

abstract class HomeRepository {
  Future<List<Question>> getQuestions();
}
