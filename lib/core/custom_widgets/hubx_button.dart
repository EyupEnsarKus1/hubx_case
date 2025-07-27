import 'package:flutter/material.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';

import '../design_system/theme/hubx_fonts.dart';

class HubxButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final EdgeInsets? padding;
  final double? height;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Gradient? gradient;
  final Color? foreGroundColor;
  final double? borderRadius;
  final double? elevation;
  final BorderSide? borderSide;
  final TextStyle? textStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? width;
  final MainAxisSize? mainAxisSize;
  final bool isLoading;
  final Color? loadingColor;
  final double? loadingSize;
  final AlignmentGeometry? alignment;
  final Color? disabledBackgroundColor;
  final bool expandWidth;

  const HubxButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.padding,
    this.margin,
    this.height,
    this.backgroundColor,
    this.gradient,
    this.foreGroundColor,
    this.borderRadius,
    this.elevation,
    this.borderSide,
    this.textStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.width,
    this.mainAxisSize,
    this.isLoading = false,
    this.loadingColor,
    this.loadingSize,
    this.alignment,
    this.disabledBackgroundColor,
    this.expandWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Container(
        decoration: gradient != null ? BoxDecoration(gradient: gradient, borderRadius: BorderRadius.circular(borderRadius ?? HubxSizes.size8)) : null,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: padding ?? HubxPadding.p16.horizontal,
            minimumSize: Size(width ?? (expandWidth ? double.infinity : 0), height ?? HubxSizes.size56),
            maximumSize: width != null ? Size(width!, double.infinity) : null,
            backgroundColor: gradient != null ? Colors.transparent : (backgroundColor ?? HubxColors.primary),
            foregroundColor: foreGroundColor ?? HubxColors.white,
            disabledForegroundColor: HubxColors.whiteTextOpacity50,

            disabledBackgroundColor: disabledBackgroundColor ?? HubxColors.grey200,
            elevation: elevation ?? 0,
            alignment: alignment ?? Alignment.center,
            textStyle:
                textStyle ??
                theme.textTheme.titleMedium?.copyWith(
                  fontWeight: HubxFontWeights.semiBold,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? HubxSizes.size12),
              side: borderSide ?? BorderSide.none,
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),

          onPressed: isLoading ? null : onPressed,
          child: isLoading
              ? SizedBox(
                  height: loadingSize ?? HubxSizes.size24,
                  width: loadingSize ?? HubxSizes.size24,
                  child: CircularProgressIndicator(color: loadingColor ?? (foreGroundColor ?? HubxColors.white), strokeWidth: 2.5),
                )
              : Row(
                  mainAxisSize: mainAxisSize ?? MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (prefixIcon != null) ...[prefixIcon!, SizedBox(width: HubxSizes.size8)],
                    Flexible(
                      child: Text(
                        title,
                        style:
                            textStyle ??
                            theme.textTheme.titleMedium?.copyWith(
                              color: foreGroundColor ?? HubxColors.white,
                              fontWeight: HubxFontWeights.semiBold,
                            ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (suffixIcon != null) ...[SizedBox(width: HubxSizes.size8), suffixIcon!],
                  ],
                ),
        ),
      ),
    );
  }
}
