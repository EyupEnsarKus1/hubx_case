import 'package:flutter/material.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_title_with_brush.dart';

import '../../../../core/design_system/theme/hubx_padding.dart';

class OnboardPhotoTitle extends StatelessWidget {
  const OnboardPhotoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HubxPadding.p20.horizontal,
      child: const OnboardTitleWithBrush(
        textParts: [
          TextPart(text: 'Get plant '),
          TextPart(text: 'care guides', isBold: true),
        ],
        brushWidth: 136,
        brushHeight: 13,
        brushLeft: 179,
        brushTop: 34,
        brushContainerLeft: -3.81,
        brushContainerTop: -7.89,
      ),
    );
  }
}
