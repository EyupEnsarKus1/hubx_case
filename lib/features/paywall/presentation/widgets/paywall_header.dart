import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';

import '../../../../core/custom_widgets/hubx_images_widgets.dart';
import '../../../../core/design_system/theme/hubx_colors.dart';
import '../../../../core/design_system/theme/hubx_fonts.dart';
import '../../../../generated/assets.gen.dart';
import 'feature_cards.dart';

class PaywallHeader extends StatelessWidget {
  const PaywallHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HubxImageWidget(
          fit: BoxFit.fitWidth,
          assetPath: Assets.images.paywall.paywallImage.path,
        ),
        Positioned(
          bottom: 48.h,
          child: Padding(
            padding: HubxPadding.p16.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "PlantApp",
                        style: TextStyle(
                          fontFamily: HubxFonts.primaryFont,
                          fontWeight: FontWeight.w900,
                          fontSize: 24.sp,
                          color: HubxColors.white,
                        ),
                      ),
                      TextSpan(
                        text: "Premium",
                        style: TextStyle(
                          fontFamily: HubxFonts.primaryFont,
                          fontWeight: HubxFontWeights.light,
                          fontSize: 27.sp,
                          color: HubxColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Access All Features",
                  style: TextStyle(
                    fontFamily: HubxFonts.primaryFont,
                    fontWeight: HubxFontWeights.regular,
                    fontSize: 17.sp,
                    color: HubxColors.white70,
                    letterSpacing: 0.38.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 20.w,
          top: MediaQuery.of(context).padding.top,
          child: Container(
            decoration: BoxDecoration(
              color: HubxColors.black.withValues(alpha: .4),
              shape: BoxShape.circle,
            ),
            child: HubxSvgImage(
              assetPath: Assets.icons.paywall.closeIcon,
              color: HubxColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
