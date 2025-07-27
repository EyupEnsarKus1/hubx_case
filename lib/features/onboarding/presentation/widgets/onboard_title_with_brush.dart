import 'package:flutter/material.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/generated/assets.gen.dart';

class TextPart {
  final String text;
  final bool isBold;

  const TextPart({
    required this.text,
    this.isBold = false,
  });
}

class OnboardTitleWithBrush extends StatelessWidget {
  final List<TextPart> textParts;
  final double? width;
  final double? brushWidth;
  final double? brushHeight;
  final double? brushLeft;
  final double? brushTop;
  final double? brushContainerLeft;
  final double? brushContainerTop;

  const OnboardTitleWithBrush({
    super.key,
    required this.textParts,
    this.width,
    this.brushWidth,
    this.brushHeight,
    this.brushLeft,
    this.brushTop,
    this.brushContainerLeft,
    this.brushContainerTop,
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
                  children: textParts.map((part) {
                    return TextSpan(
                      text: part.text,
                      style: TextStyle(
                        color: HubxColors.mainText,
                        fontSize: HubxSizes.size28,
                        fontFamily: HubxFonts.primaryFont,
                        fontWeight: part.isBold ? HubxFontWeights.extraBold : HubxFontWeights.medium,
                        letterSpacing: -1,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          if (brushWidth != null && brushHeight != null && brushLeft != null && brushTop != null)
            Positioned(
              left: brushLeft!,
              top: brushTop!,
              child: Container(
                width: brushWidth!,
                height: brushHeight!,
                child: Stack(
                  children: [
                    Positioned(
                      left: brushContainerLeft ?? 0,
                      top: brushContainerTop ?? 0,
                      child: Container(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(0.07),

                        width: brushWidth! + 4,
                        height: brushHeight! + 8,
                      ),
                    ),
                    Positioned(
                      left: -3,
                      top: 0,
                      child: Container(
                        width: brushWidth! - 2,
                        height: brushHeight! - 1,
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
