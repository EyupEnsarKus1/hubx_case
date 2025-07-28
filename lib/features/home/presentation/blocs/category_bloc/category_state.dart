import 'package:equatable/equatable.dart';
import 'package:hubx_case/features/home/domain/entities/category_entity.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object?> get props => [];
}

final class CategoryInitial extends CategoryState {
  const CategoryInitial();
}

final class CategoryLoading extends CategoryState {
  const CategoryLoading();
}

final class CategoryLoaded extends CategoryState {
  final List<Category> categories;

  const CategoryLoaded({
    required this.categories,
  });

  @override
  List<Object?> get props => [categories];
}

final class CategoryError extends CategoryState {
  final String message;

  const CategoryError({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}

final class CategoryRefreshing extends CategoryState {
  final List<Category> categories;

  const CategoryRefreshing({
    required this.categories,
  });

  @override
  List<Object?> get props => [categories];
}
