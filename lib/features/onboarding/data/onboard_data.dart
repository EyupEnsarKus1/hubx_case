import 'package:flutter/material.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/features/onboarding/data/onboard_model.dart';

import '../../../core/design_system/theme/hubx_fonts.dart';
import '../../../generated/assets.gen.dart';

List<OnBoardModel> buildOnboardData(BuildContext context) {
  return [
    OnBoardModel(
      title: RichText(
        text: TextSpan(
          text: 'Welcome to ',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: HubxSizes.size28,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'PlantApp',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: HubxSizes.size28,
                fontWeight: HubxFontWeights.light,
              ),
            ),
          ],
        ),
      ),
      description: 'Identify more than 3000+ plants and 88% accuracy.',
      image: Assets.images.onboard.onboardImageOne.path,
      buttonText: 'Get Started',
      legacyText: RichText(
        text: const TextSpan(
          style: TextStyle(
            color: HubxColors.onboardLegacyTextColor,
            fontSize: 11,
            fontFamily: HubxFonts.primaryFont,
            fontWeight: FontWeight.w400,
            height: 1.36,
          ),
          text: '',
          children: [
            TextSpan(
              children: [
                TextSpan(
                  text: 'By tapping next, you are agreeing to PlantID\n',
                ),
                TextSpan(
                  text: 'Terms of Use',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: ' & ',
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: '.',
                ),
              ],
            ),
          ],
        ),
      ),

      pageBg: Assets.images.background.onboardScreenOneBg.path,
    ),
    OnBoardModel(
      title: Column(
        children: [
          Container(
            width: 315,
            height: 66,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Take a photo to ',
                              style: TextStyle(
                                color: const Color(0xFF13231B),
                                fontSize: 28,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -1,
                              ),
                            ),
                            TextSpan(
                              text: 'identify\n',
                              style: TextStyle(
                                color: const Color(0xFF13231B),
                                fontSize: 28,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w800,
                                letterSpacing: -1,
                              ),
                            ),
                            TextSpan(
                              text: 'the plant!',
                              style: TextStyle(
                                color: const Color(0xFF13231B),
                                fontSize: 28,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 179,
                  top: 34,
                  child: Container(
                    width: 136,
                    height: 13,
                    child: Stack(
                      children: [
                        Positioned(
                          left: -3.81,
                          top: -7.89,
                          child: Container(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.07),
                            width: 140.25,
                            height: 20.58,
                          ),
                        ),
                        Positioned(
                          left: -3,
                          top: 0,
                          child: Container(
                            width: 138,
                            height: 12,
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
          ),
        ],
      ),
      image: Assets.images.onboard.onboardImageTwo.path,
      buttonText: 'Continue',
      pageBg: Assets.images.background.onboardScreenOneBg.path,
    ),
    OnBoardModel(
      title: Column(
        children: [
          Container(
            width: 277,
            height: 47.72,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Get plant ',
                              style: TextStyle(
                                color: const Color(0xFF13231B),
                                fontSize: 28,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -1,
                              ),
                            ),
                            TextSpan(
                              text: 'care guides',
                              style: TextStyle(
                                color: const Color(0xFF13231B),
                                fontSize: 28,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w800,
                                letterSpacing: -1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 126,
                  top: 33.28,
                  child: Container(
                    width: 151,
                    height: 14.43,
                    child: Stack(
                      children: [
                        Positioned(
                          left: -4.24,
                          top: -8.76,
                          child: Container(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.07),
                            width: 155.71,
                            height: 22.85,
                          ),
                        ),
                        Positioned(
                          left: -3.33,
                          top: 0,
                          child: Container(
                            width: 153.22,
                            height: 13.32,
                            decoration: BoxDecoration(color: const Color(0xFF13231B)),
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
          ),
        ],
      ),
      image: Assets.images.onboard.onboardImageOne.path,
      buttonText: 'Continue',
      pageBg: Assets.images.background.onboardScreenOneBg.path,
    ),
  ];
}
