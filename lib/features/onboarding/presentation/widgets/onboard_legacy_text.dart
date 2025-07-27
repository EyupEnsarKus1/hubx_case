import 'package:flutter/material.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';

class OnboardLegacyText extends StatelessWidget {
  const OnboardLegacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(
          color: HubxColors.onboardLegacyTextColor,
          fontSize: 11,
          fontFamily: HubxFonts.primaryFont,
          fontWeight: FontWeight.w400,
          height: 1.36,
        ),
        text: '',
        children: [
          TextSpan(
            children: [
              TextSpan(
                text: 'By tapping next, you are agreeing to PlantID\n',
              ),
              TextSpan(
                text: 'Terms of Use',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' & ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: '.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
