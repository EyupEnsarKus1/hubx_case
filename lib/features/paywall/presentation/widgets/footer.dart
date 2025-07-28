import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design_system/theme/hubx_colors.dart';
import '../../../../core/design_system/theme/hubx_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: HubxColors.paywallBackground,
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _FooterLink(text: "Terms"),
            Text(
              " • ",
              style: TextStyle(
                color: HubxColors.white.withValues(alpha: 0.5),
                fontSize: 12.sp,
              ),
            ),
            _FooterLink(text: "Privacy"),
            Text(
              " • ",
              style: TextStyle(
                color: HubxColors.white.withValues(alpha: 0.5),
                fontSize: 12.sp,
              ),
            ),
            _FooterLink(text: "Restore"),
          ],
        ),
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String text;

  const _FooterLink({required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
          fontFamily: HubxFonts.primaryFont,
          fontWeight: HubxFontWeights.regular,
          fontSize: 12.sp,
          color: HubxColors.white.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
