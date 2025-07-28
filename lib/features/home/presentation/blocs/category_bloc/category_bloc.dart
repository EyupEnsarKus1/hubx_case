import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:hubx_case/core/utils/generic_use_case.dart';
import 'package:hubx_case/features/home/domain/usescases/get_categories_use_case.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_event.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUseCase _getCategoriesUseCase;

  CategoryBloc(this._getCategoriesUseCase) : super(const CategoryInitial()) {
    on<LoadCategoriesEvent>(_onLoadCategories);
    on<RefreshCategoriesEvent>(_onRefreshCategories);
  }

  Future<void> _onLoadCategories(
    LoadCategoriesEvent event,
    Emitter<CategoryState> emit,
  ) async {
    try {
      emit(const CategoryLoading());

      final categories = await _getCategoriesUseCase(NoParams());

      emit(CategoryLoaded(categories: categories));
    } catch (e) {
      emit(CategoryError(message: e.toString()));
    }
  }

  Future<void> _onRefreshCategories(
    RefreshCategoriesEvent event,
    Emitter<CategoryState> emit,
  ) async {
    try {
      if (state is CategoryLoaded) {
        final currentState = state as CategoryLoaded;
        emit(CategoryRefreshing(categories: currentState.categories));
      } else {
        emit(const CategoryLoading());
      }

      final categories = await _getCategoriesUseCase(NoParams());

      emit(CategoryLoaded(categories: categories));
    } catch (e) {
      emit(CategoryError(message: e.toString()));
    }
  }
}
