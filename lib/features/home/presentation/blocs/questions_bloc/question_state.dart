import 'package:equatable/equatable.dart';
import 'package:hubx_case/features/home/domain/entities/question_entity.dart';

sealed class QuestionState extends Equatable {
  const QuestionState();

  @override
  List<Object?> get props => [];
}

final class QuestionInitial extends QuestionState {
  const QuestionInitial();
}

final class QuestionLoading extends QuestionState {
  const QuestionLoading();
}

final class QuestionLoaded extends QuestionState {
  final List<Question> questions;

  const QuestionLoaded({
    required this.questions,
  });

  @override
  List<Object?> get props => [questions];
}

final class QuestionError extends QuestionState {
  final String message;

  const QuestionError({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}

final class QuestionRefreshing extends QuestionState {
  final List<Question> questions;

  const QuestionRefreshing({
    required this.questions,
  });

  @override
  List<Object?> get props => [questions];
}
