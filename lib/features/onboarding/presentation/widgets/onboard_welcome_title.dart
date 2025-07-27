import 'package:flutter/material.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';

class OnboardWelcomeTitle extends StatelessWidget {
  const OnboardWelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HubxPadding.p20.horizontal,
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: 'Welcome to ',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: HubxSizes.size28,
            color: HubxColors.mainText,

            fontWeight: HubxFontWeights.light,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'PlantApp',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: HubxSizes.size28,
                color: HubxColors.mainText,
                fontWeight: HubxFontWeights.semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
