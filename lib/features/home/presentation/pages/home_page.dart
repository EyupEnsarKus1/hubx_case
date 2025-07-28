import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case/core/network/dependy_injection/injection.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_bloc.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_event.dart';
import 'package:hubx_case/features/home/presentation/widgets/questions_section.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  static const String routePath = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionBloc()..add(const LoadQuestionsEvent()),
      child: const Column(
        children: [
          QuestionsSection(),
        ],
      ),
    );
  }
}
