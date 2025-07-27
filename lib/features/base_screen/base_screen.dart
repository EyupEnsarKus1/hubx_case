import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';

import '../../core/design_system/theme/hubx_colors.dart';
import '../../core/design_system/theme/hubx_padding.dart';
import '../../core/design_system/theme/hubx_sizes.dart';
import '../../core/design_system/theme/hubx_fonts.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key, required this.child, required this.fullPath});

  final StatefulNavigationShell child;
  final String fullPath;

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      backgroundColor: HubxColors.scaffoldBackground,
      body: child,
      bottomNavigationBar: Container(
        padding: HubxPadding.p8.all + EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
          color: HubxColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: NavItem(
                index: 0,
                icon: Icons.home,
                label: 'Home',
                isSelected: child.currentIndex == 0,
                onTap: () {
                  child.goBranch(0, initialLocation: child.currentIndex == 0);
                },
              ),
            ),
            Expanded(
              child: NavItem(
                index: 1,
                icon: Icons.shield,
                label: 'Diagnose',
                isSelected: child.currentIndex == 1,
                onTap: () {
                  child.goBranch(1, initialLocation: child.currentIndex == 1);
                },
              ),
            ),
            Expanded(
              child: CenterButton(),
            ),
            Expanded(
              child: NavItem(
                index: 2,
                icon: Icons.eco,
                label: 'My Garden',
                isSelected: child.currentIndex == 2,
                onTap: () {
                  child.goBranch(2, initialLocation: child.currentIndex == 2);
                },
              ),
            ),
            Expanded(
              child: NavItem(
                index: 3,
                icon: Icons.person,
                label: 'Profile',
                isSelected: child.currentIndex == 3,
                onTap: () {
                  child.goBranch(3, initialLocation: child.currentIndex == 3);
                },
              ),
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
  final IconData icon;
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
            Icon(
              icon,
              color: isSelected ? HubxColors.primary : HubxColors.bottomNavInactive,
              size: HubxSizes.size24,
            ),
            HubxSizes.size4.verticalSpace,
            Text(
              label,
              style: TextStyle(
                color: isSelected ? HubxColors.primary : HubxColors.bottomNavInactive,
                fontSize: HubxSizes.size14,
                fontWeight: HubxFontWeights.medium,
                fontFamily: HubxFonts.primaryFont,
                height: 1.5,
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
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30.r),
        child: Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: HubxColors.primary,
            borderRadius: BorderRadius.circular(30.r),
            boxShadow: [
              BoxShadow(
                color: HubxColors.primary.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(
            Icons.camera_alt,
            color: HubxColors.white,
            size: HubxSizes.size24,
          ),
        ),
      ),
    );
  }
}
