import 'package:injectable/injectable.dart';
import 'package:hubx_case/core/network/utils/generic_use_case.dart';
import 'package:hubx_case/features/home/domain/entities/question_entity.dart';
import 'package:hubx_case/features/home/domain/repository/home_repository.dart';

import '../../../../core/network/dependy_injection/injection.dart';

@injectable
class GetQuestionsUseCase implements UseCase<List<Question>, NoParams> {
  HomeRepository get _repository => getIt<HomeRepository>();

  GetQuestionsUseCase();

  @override
  Future<List<Question>> call(NoParams params) async {
    return await _repository.getQuestions();
  }
}
