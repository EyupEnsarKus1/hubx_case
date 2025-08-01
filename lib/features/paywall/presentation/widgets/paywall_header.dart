import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';

import '../../../../core/custom_widgets/hubx_images_widgets.dart';
import '../../../../core/design_system/theme/hubx_colors.dart';
import '../../../../core/design_system/theme/hubx_fonts.dart';
import '../../../../generated/assets.gen.dart';
import 'feature_cards.dart';

class PaywallHeader extends StatefulWidget {
  final VoidCallback? onClose;
  const PaywallHeader({super.key, this.onClose});

  @override
  State<PaywallHeader> createState() => _PaywallHeaderState();
}

class _PaywallHeaderState extends State<PaywallHeader> {
  bool _showCloseIcon = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _showCloseIcon = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HubxImageWidget(
          fit: BoxFit.fitWidth,
          assetPath: Assets.images.paywall.paywallHeaderImage.path,
        ),
        Positioned(
          bottom: -24.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: HubxPadding.p16.horizontal,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "PlantApp ",
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
              ),
              Padding(
                padding: HubxPadding.p16.horizontal,
                child: Text(
                  "Access All Features",
                  style: TextStyle(
                    fontFamily: HubxFonts.primaryFont,
                    fontWeight: HubxFontWeights.regular,
                    fontSize: 17.sp,
                    color: HubxColors.white70,
                    letterSpacing: 0.38.sp,
                  ),
                ),
              ),
              24.verticalSpace,
              const FeatureCards(),
            ],
          ),
        ),
        if (_showCloseIcon)
          Positioned(
            right: 20.w,
            top: MediaQuery.of(context).padding.top,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: widget.onClose,

                borderRadius: BorderRadius.circular(22.r),
                child: Container(
                  decoration: BoxDecoration(
                    color: HubxColors.black.withValues(alpha: .4),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: HubxSvgImage(
                      assetPath: Assets.icons.paywall.closeIcon,
                      color: HubxColors.white,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
