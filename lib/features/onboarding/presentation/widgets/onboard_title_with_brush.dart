import 'package:flutter/material.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/generated/assets.gen.dart';

class OnboardTitleWithBrush extends StatelessWidget {
  final String normalText;
  final String brushText;
  final double? width;
  final double brushWidth;
  final double brushHeight;
  final double brushLeft;
  final double brushTop;
  final double brushContainerLeft;
  final double brushContainerTop;

  const OnboardTitleWithBrush({
    super.key,
    required this.normalText,
    required this.brushText,
    this.width,
    required this.brushWidth,
    required this.brushHeight,
    required this.brushLeft,
    required this.brushTop,
    required this.brushContainerLeft,
    required this.brushContainerTop,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: normalText,
                      style: TextStyle(
                        color: HubxColors.mainText,
                        fontSize: HubxSizes.size28,
                        fontFamily: HubxFonts.primaryFont,
                        fontWeight: HubxFontWeights.medium,
                        letterSpacing: -1,
                      ),
                    ),
                    TextSpan(
                      text: brushText,
                      style: TextStyle(
                        color: HubxColors.mainText,
                        fontSize: HubxSizes.size28,
                        fontFamily: HubxFonts.primaryFont,
                        fontWeight: HubxFontWeights.extraBold,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: brushLeft,
            top: brushTop,
            child: Container(
              width: brushWidth,
              height: brushHeight,
              child: Stack(
                children: [
                  Positioned(
                    left: brushContainerLeft,
                    top: brushContainerTop,
                    child: Container(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(0.07),
                      width: brushWidth + 4,
                      height: brushHeight + 8,
                    ),
                  ),
                  Positioned(
                    left: -3,
                    top: 0,
                    child: Container(
                      width: brushWidth - 2,
                      height: brushHeight - 1,
                      child: HubxImageWidget(
                        assetPath: Assets.images.onboard.onboardTitleBrush.path,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
