import 'package:equatable/equatable.dart';

sealed class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object?> get props => [];
}

final class LoadCategoriesEvent extends CategoryEvent {
  const LoadCategoriesEvent();
}

final class RefreshCategoriesEvent extends CategoryEvent {
  const RefreshCategoriesEvent();
}
