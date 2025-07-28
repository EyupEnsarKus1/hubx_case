import 'package:equatable/equatable.dart';

sealed class QuestionEvent extends Equatable {
  const QuestionEvent();

  @override
  List<Object?> get props => [];
}

final class LoadQuestionsEvent extends QuestionEvent {
  const LoadQuestionsEvent();
}

final class RefreshQuestionsEvent extends QuestionEvent {
  const RefreshQuestionsEvent();
}
