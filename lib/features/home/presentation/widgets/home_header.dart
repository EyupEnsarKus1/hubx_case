import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/features/home/presentation/pages/search_page.dart';

import '../../../../core/custom_widgets/hubx_images_widgets.dart';
import '../../../../core/custom_widgets/hubx_text_field.dart';
import '../../../../core/design_system/theme/hubx_padding.dart';
import '../../../../generated/assets.gen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HubxImageWidget(
          assetPath: Assets.images.background.homeHeader.path,
        ),
        Padding(
          padding: HubxPadding.p20.horizontal + EdgeInsets.only(top: MediaQuery.of(context).padding.top + 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, plant lover!",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: HubxColors.mainText,
                ),
              ),
              6.verticalSpace,
              Text(
                "Good Afternoon! ⛅",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: HubxColors.mainText,
                ),
              ),
              12.verticalSpace,
              HubxTextField(
                contentPadding: HubxPadding.p12.onlyTop,
                controller: TextEditingController(),
                filled: true,
                onTap: () {
                  context.pushNamed(SearchPage.routeName);
                },
                enabled: true,
                showBorder: true,
                hintText: "Search for plants",
                fillColor: HubxColors.white.withValues(alpha: .88),
                borderRadius: 12.r,
                prefixIcon: Padding(
                  padding: HubxPadding.p12.custom(right: 0),
                  child: HubxSvgImage(
                    assetPath: Assets.icons.home.searchIcon,
                    height: HubxSizes.size20,
                    width: HubxSizes.size20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
