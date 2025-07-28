import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/features/paywall/presentation/pages/paywall_page.dart';

import '../../../../generated/assets.gen.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(PaywallPage.routeName);
      },
      child: Container(
        margin: HubxPadding.p16.horizontal,
        padding: HubxPadding.p12.custom(
          left: HubxSizes.size16,
          right: HubxSizes.size10,
        ),
        decoration: BoxDecoration(
          color: HubxColors.premiumCardBg,
          borderRadius: BorderRadius.circular(
            HubxSizes.size12,
          ),
        ),
        child: Row(
          children: [
            HubxImageWidget(
              assetPath: Assets.icons.home.premiumBadge.path,
              width: HubxSizes.size40,
              height: HubxSizes.size40,
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'FREE',
                          style: TextStyle(
                            color: const Color(0xFFE5C990),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 1.31,
                            shadows: [Shadow(offset: Offset(0, 2), blurRadius: 4, color: Color(0xFF000000).withOpacity(0.32))],
                          ),
                        ),
                        TextSpan(
                          text: ' Premium Available',
                          style: TextStyle(
                            color: const Color(0xFFE5C990),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1.31,
                            shadows: [Shadow(offset: Offset(0, 2), blurRadius: 4, color: Color(0xFF000000).withOpacity(0.32))],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Tap to upgrade your account!',
                    style: TextStyle(
                      color: const Color(0xCCFFDE9C),
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 1.23,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: HubxSizes.size16,
              color: HubxColors.goldIcon,
            ),
          ],
        ),
      ),
    );
  }
}
