import 'package:flutter/material.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_title_with_brush.dart';

class OnboardPhotoTitle extends StatelessWidget {
  const OnboardPhotoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardTitleWithBrush(
          normalText: 'Take a photo to ',
          brushText: 'identify\nthe plant!',
          brushWidth: 136,
          brushHeight: 13,
          brushLeft: 179,
          brushTop: 34,
          brushContainerLeft: -3.81,
          brushContainerTop: -7.89,
        ),
      ],
    );
  }
}
