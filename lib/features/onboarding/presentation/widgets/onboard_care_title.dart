import 'package:flutter/material.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_title_with_brush.dart';

import '../../../../core/design_system/theme/hubx_padding.dart';

class OnboardCareTitle extends StatelessWidget {
  const OnboardCareTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HubxPadding.p20.horizontal,
      child: const OnboardTitleWithBrush(
        textParts: [
          TextPart(text: 'Take a photo to '),
          TextPart(text: 'identify\n', isBold: true),
          TextPart(text: 'the plant!'),
        ],
        brushWidth: 160,
        brushHeight: 14.43,
        brushLeft: 200,
        brushTop: 33.28,
        brushContainerLeft: -4.24,
        brushContainerTop: -8.76,
      ),
    );
  }
}
