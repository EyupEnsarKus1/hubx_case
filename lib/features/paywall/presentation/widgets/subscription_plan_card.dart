import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';

class SubscriptionPlanCard extends StatelessWidget {
  final bool isSelected;
  const SubscriptionPlanCard({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: HubxPadding.p16.horizontal,
      decoration: BoxDecoration(
        border: Border.all(
          color: HubxColors.primary,
          width: 1.5.w,
        ),
        gradient: isSelected
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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
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
                "Save 50%",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          Padding(
            padding: HubxPadding.p14.all,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1 Month",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "First 3 days free, then \$529,99/year",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
