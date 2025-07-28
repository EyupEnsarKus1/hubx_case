import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';
import 'package:hubx_case/features/paywall/data/subscription_model.dart';

class SubscriptionPlanCard extends StatelessWidget {
  final SubscriptionModel subscription;
  final VoidCallback? onTap;

  const SubscriptionPlanCard({
    super.key,
    required this.subscription,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: HubxPadding.p16.horizontal + HubxPadding.p16.onlyBottom,
        decoration: BoxDecoration(
          border: Border.all(
            color: subscription.isSelected ? HubxColors.primary : HubxColors.white30,
            width: 1.5.w,
          ),
          gradient: subscription.isSelected
              ? LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    HubxColors.primary.withValues(alpha: 0.24),
                    HubxColors.primary.withValues(alpha: 0.0),
                  ],
                )
              : null,
          borderRadius: BorderRadius.circular(14.r),
        ),
        alignment: Alignment.centerLeft,
        child: Stack(
          children: [
            if (subscription.discountText != null)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: HubxPadding.p4.vertical + HubxPadding.p10.horizontal,
                  decoration: BoxDecoration(
                    color: HubxColors.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      topRight: Radius.circular(14.r),
                    ),
                  ),
                  child: Text(
                    subscription.discountText!,
                    style: TextStyle(
                      fontFamily: HubxFonts.primaryFont,
                      fontWeight: HubxFontWeights.medium,
                      fontSize: 12.sp,
                      color: HubxColors.white,
                    ),
                  ),
                ),
              ),
            Container(
              padding: HubxPadding.p14.all,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: subscription.isSelected ? HubxColors.primary : Colors.transparent,
                      border: subscription.isSelected
                          ? null
                          : Border.all(
                              color: HubxColors.white.withValues(alpha: 0.5),
                              width: 1.5.w,
                            ),
                    ),
                    child: subscription.isSelected
                        ? Center(
                            child: Container(
                              width: 8.w,
                              height: 8.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HubxColors.white,
                              ),
                            ),
                          )
                        : null,
                  ),
                  12.horizontalSpace,

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          subscription.title,
                          style: TextStyle(
                            fontFamily: HubxFonts.primaryFont,
                            fontWeight: HubxFontWeights.medium,
                            fontSize: 16.sp,
                            color: HubxColors.white,
                          ),
                        ),

                        SizedBox(height: 4.h),

                        // Price and description
                        _buildPriceText(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceText(BuildContext context) {
    if (subscription.hasFreeTrial && subscription.freeTrialText != null) {
      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: HubxFonts.primaryFont,
            fontSize: 12.sp,
            fontWeight: subscription.isSelected ? HubxFontWeights.regular : HubxFontWeights.light,
            color: HubxColors.white.withValues(alpha: 0.7),
          ),
          children: [
            TextSpan(text: '${subscription.freeTrialText!} '),
            TextSpan(
              text: subscription.price,
              style: TextStyle(
                fontWeight: HubxFontWeights.regular,
                color: HubxColors.white.withValues(alpha: 0.7),
              ),
            ),
            TextSpan(text: subscription.period),
          ],
        ),
      );
    } else {
      // Simple text for monthly plan
      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: HubxFonts.primaryFont,
            fontSize: 12.sp,
            fontWeight: subscription.isSelected ? HubxFontWeights.regular : HubxFontWeights.light,
            color: HubxColors.white.withValues(alpha: 0.7),
          ),
          children: [
            TextSpan(
              text: subscription.price,
              style: TextStyle(
                fontWeight: HubxFontWeights.regular,
                color: HubxColors.white.withValues(alpha: 0.7),
              ),
            ),
            TextSpan(text: subscription.period),
          ],
        ),
      );
    }
  }
}
