import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:hubx_case/core/utils/generic_use_case.dart';
import 'package:hubx_case/features/home/domain/usescases/get_questions_use_case.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_event.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_state.dart';

import '../../../../../core/network/dependy_injection/injection.dart';

@injectable
class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  GetQuestionsUseCase get _getQuestionsUseCase => getIt<GetQuestionsUseCase>();

  QuestionBloc() : super(const QuestionInitial()) {
    on<LoadQuestionsEvent>(_onLoadQuestions);
    on<RefreshQuestionsEvent>(_onRefreshQuestions);
  }

  Future<void> _onLoadQuestions(
    LoadQuestionsEvent event,
    Emitter<QuestionState> emit,
  ) async {
    try {
      emit(const QuestionLoading());

      final questions = await _getQuestionsUseCase(NoParams());

      emit(QuestionLoaded(questions: questions));
    } catch (e) {
      emit(QuestionError(message: e.toString()));
    }
  }

  Future<void> _onRefreshQuestions(
    RefreshQuestionsEvent event,
    Emitter<QuestionState> emit,
  ) async {
    try {
      if (state is QuestionLoaded) {
        final currentQuestions = (state as QuestionLoaded).questions;
        emit(QuestionRefreshing(questions: currentQuestions));
      } else {
        emit(const QuestionLoading());
      }

      final questions = await _getQuestionsUseCase(NoParams());

      emit(QuestionLoaded(questions: questions));
    } catch (e) {
      emit(QuestionError(message: e.toString()));
    }
  }
}
