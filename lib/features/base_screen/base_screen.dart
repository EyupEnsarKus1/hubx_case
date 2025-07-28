import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';

import '../../core/design_system/theme/hubx_colors.dart';
import '../../core/design_system/theme/hubx_padding.dart';
import '../../core/design_system/theme/hubx_sizes.dart';
import '../../core/design_system/theme/hubx_fonts.dart';
import '../../generated/assets.gen.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key, required this.child, required this.fullPath});

  final StatefulNavigationShell child;
  final String fullPath;

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      backgroundColor: HubxColors.scaffoldBackground,
      body: child,
      floatingActionButton: CenterButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        padding: HubxPadding.p8.all,

        decoration: BoxDecoration(
          color: HubxColors.white,
          border: Border(
            top: BorderSide(
              color: HubxColors.bottomNavBarBorderColor,
              width: 1.w,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItem(
              index: 0,
              icon: Assets.icons.svgIcons.home.homeIcon,
              label: 'Home',
              isSelected: child.currentIndex == 0,
              onTap: () {
                child.goBranch(0, initialLocation: child.currentIndex == 0);
              },
            ),
            NavItem(
              index: 1,
              icon: Assets.icons.svgIcons.home.diagnoseIcon,
              label: 'Diagnose',
              isSelected: child.currentIndex == 1,
              onTap: () {
                child.goBranch(1, initialLocation: child.currentIndex == 1);
              },
            ),
            30.horizontalSpace,
            NavItem(
              index: 2,
              icon: Assets.icons.svgIcons.home.myGardenIcon,
              label: 'My Garden',
              isSelected: child.currentIndex == 2,
              onTap: () {
                child.goBranch(2, initialLocation: child.currentIndex == 2);
              },
            ),
            NavItem(
              index: 3,
              icon: Assets.icons.svgIcons.home.profileIcon,
              label: 'Profile',
              isSelected: child.currentIndex == 3,
              onTap: () {
                child.goBranch(3, initialLocation: child.currentIndex == 3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.index,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      splashColor: HubxColors.primary.withOpacity(0.1),
      highlightColor: HubxColors.primary.withOpacity(0.05),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HubxSvgImage(assetPath: icon, width: 24.w, height: 24.h, color: isSelected ? HubxColors.primary : HubxColors.bottomNavInactive),
            HubxSizes.size4.verticalSpace,
            Text(
              label,
              style: TextStyle(
                color: isSelected ? HubxColors.primary : HubxColors.bottomNavInactiveTextColor,
                fontSize: HubxSizes.size12,
                fontWeight: HubxFontWeights.regular,
                fontFamily: HubxFonts.primaryFont,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CenterButton extends StatelessWidget {
  const CenterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30.r),
      child: Container(
        padding: HubxPadding.p20.all,
        decoration: BoxDecoration(
          color: HubxColors.primary,
          shape: BoxShape.circle,
          border: Border.all(
            color: HubxColors.white.withValues(alpha: .24),
            width: 4.w,
          ),
        ),
        child: HubxSvgImage(
          assetPath: Assets.icons.svgIcons.home.scanIcon,

          color: HubxColors.white,
        ),
      ),
    );
  }
}
