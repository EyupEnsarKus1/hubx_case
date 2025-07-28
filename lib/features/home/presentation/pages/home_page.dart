import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/core/network/dependy_injection/injection.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_bloc.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_event.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_event.dart';
import 'package:hubx_case/features/home/presentation/widgets/premium_card.dart';
import 'package:hubx_case/features/home/presentation/widgets/questions_section.dart';
import 'package:hubx_case/features/home/presentation/widgets/category_section.dart';
import 'package:hubx_case/features/paywall/presentation/pages/paywall_page.dart';

import '../../../../generated/assets.gen.dart';
import '../widgets/home_header.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  static const String routePath = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.go(PaywallPage.routePath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => QuestionBloc()..add(const LoadQuestionsEvent()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc()..add(const LoadCategoriesEvent()),
        ),
      ],
      child: SingleChildScrollView(
        child: Column(
          spacing: HubxSizes.size24,
          children: [
            HomeHeader(),
            PremiumCard(),
            QuestionsSection(),
            CategorySection(),
          ],
        ),
      ),
    );
  }
}
