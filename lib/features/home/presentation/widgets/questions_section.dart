import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/custom_widgets/hubx_shimmer_widgets.dart';
import 'package:hubx_case/features/home/domain/entities/question_entity.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_bloc.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_event.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_state.dart';
import 'package:hubx_case/features/home/presentation/widgets/question_card.dart';

class QuestionsSection extends StatelessWidget {
  const QuestionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        return _buildContent(context, state);
      },
    );
  }

  Widget _buildContent(BuildContext context, QuestionState state) {
    switch (state) {
      case QuestionLoading():
        return const QuestionsShimmerList();
      case QuestionLoaded():
        return QuestionsList(questions: state.questions);
      case QuestionRefreshing():
        return QuestionsList(questions: state.questions);
      case QuestionError():
        return QuestionsErrorWidget(message: state.message);
      case QuestionInitial():
        return const SizedBox.shrink();
    }
  }
}

class QuestionsList extends StatelessWidget {
  final List<Question> questions;

  const QuestionsList({super.key, required this.questions});

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return Center(
        child: Text(
          'Henüz soru bulunamadı',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
    }

    return SingleChildScrollView(
      padding: HubxPadding.p12.horizontal,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: questions.map((question) {
          return QuestionCard(
            question: question,
            onTap: () {
              debugPrint('Question tapped: ${question.title}');
            },
          );
        }).toList(),
      ),
    );
  }
}

class QuestionsShimmerList extends StatelessWidget {
  const QuestionsShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: HubxPadding.p16.horizontal,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          3,
          (index) => QuestionShimmerCard(),
        ),
      ),
    );
  }
}

class QuestionShimmerCard extends StatelessWidget {
  const QuestionShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw * 0.65,
      height: 1.sw * 0.45,
      margin: HubxPadding.p8.horizontal,
      child: ShimmerBox(
        width: 1.sw * 0.65,
        height: 1.sw * 0.45,
        borderRadius: 12,
      ),
    );
  }
}

class QuestionsErrorWidget extends StatelessWidget {
  final String message;

  const QuestionsErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bir hata oluştu',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          8.verticalSpace,
          Text(
            message,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          16.verticalSpace,
          ElevatedButton(
            onPressed: () {
              context.read<QuestionBloc>().add(const LoadQuestionsEvent());
            },
            child: const Text('Tekrar Dene'),
          ),
        ],
      ),
    );
  }
}
