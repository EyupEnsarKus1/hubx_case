import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/services/onboard_service.dart';
import 'package:hubx_case/features/home/presentation/pages/home_page.dart';

class OnboardingPage extends StatelessWidget {
  static const String routeName = '/onboarding';
  static const String routePath = '/onboarding';
  
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () async {
              final onBoardService = OnBoardService();
              await onBoardService.setHasSeenOnBoarding();
              if (context.mounted) {
                context.go(HomePage.routePath);
              }
            },
            child: Text("Geç"),
          ),
        ],
      ),
    );
  }
}
