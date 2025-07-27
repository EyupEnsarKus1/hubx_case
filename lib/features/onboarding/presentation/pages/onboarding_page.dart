import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/services/onboard_service.dart';
import 'package:hubx_case/features/home/presentation/pages/home_page.dart';
import '../../../../generated/assets.gen.dart';
import '../../data/onboard_data.dart';

class OnboardingPage extends StatefulWidget {
  static const String routeName = '/onboarding';
  static const String routePath = '/onboarding';

  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _completeOnboarding() async {
    final onBoardService = OnBoardService();
    await onBoardService.setHasSeenOnBoarding();
    if (mounted) {
      context.go(HomePage.routePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      body: Column(),
    );
  }
}
