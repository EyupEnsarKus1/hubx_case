import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';

import '../../../../core/custom_widgets/hubx_images_widgets.dart';
import '../../../../core/design_system/theme/hubx_sizes.dart';
import '../../data/feature_model.dart';

class SingleFeatureCard extends StatelessWidget {
  final FeatureModel feature;
  const SingleFeatureCard({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw * 0.43,
      margin: HubxPadding.p4.horizontal,
      padding: HubxPadding.p16.all,
      decoration: BoxDecoration(
        color: HubxColors.white.withValues(alpha: .08),
        borderRadius: BorderRadius.circular(HubxSizes.size14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: HubxPadding.p8.all,
            decoration: BoxDecoration(
              color: HubxColors.black.withValues(alpha: 0.24),
              borderRadius: BorderRadius.circular(HubxSizes.size8),
            ),

            child: HubxSvgImage(
              assetPath: feature.iconPath,
              color: HubxColors.white,
              width: 18.w,
              height: 18.h,
            ),
          ),
          10.verticalSpace,
          Text(
            "${feature.title}",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          4.verticalSpace,
          Text(
            "${feature.description}",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: HubxColors.white70,
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
