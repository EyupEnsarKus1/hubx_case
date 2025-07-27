import 'package:flutter/material.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_title_with_brush.dart';

class OnboardCareTitle extends StatelessWidget {
  const OnboardCareTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardTitleWithBrush(
      normalText: 'Get plant ',
      brushText: 'care guides',
      brushWidth: 151,
      brushHeight: 14.43,
      brushLeft: 126,
      brushTop: 33.28,
      brushContainerLeft: -4.24,
      brushContainerTop: -8.76,
    );
  }
}
