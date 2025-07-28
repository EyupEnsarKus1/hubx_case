import 'package:injectable/injectable.dart';

import 'package:hubx_case/features/home/domain/entities/category_entity.dart';
import 'package:hubx_case/features/home/domain/repository/home_repository.dart';

import '../../../../core/network/dependy_injection/injection.dart';
import '../../../../core/utils/generic_use_case.dart';

@injectable
class GetCategoriesUseCase implements UseCase<List<Category>, NoParams> {
  HomeRepository get _repository => getIt<HomeRepository>();

  GetCategoriesUseCase();

  @override
  Future<List<Category>> call(NoParams params) async {
    return await _repository.getCategories();
  }
}
