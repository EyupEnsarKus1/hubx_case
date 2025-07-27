import 'package:flutter/material.dart';
import 'package:hubx_case/features/onboarding/data/onboard_model.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_welcome_title.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_legacy_text.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_photo_title.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_care_title.dart';

import '../../../generated/assets.gen.dart';

List<OnBoardModel> buildOnboardData(BuildContext context) {
  return [
    OnBoardModel(
      title: const OnboardWelcomeTitle(),
      description: 'Identify more than 3000+ plants and 88% accuracy.',
      image: Assets.images.onboard.onboardImageOne.path,
      buttonText: 'Get Started',
      legacyText: const OnboardLegacyText(),

      pageBg: Assets.images.background.onboardScreenOneBg.path,
    ),
    OnBoardModel(
      title: const OnboardPhotoTitle(),
      image: Assets.images.onboard.onboardImageTwo.path,
      buttonText: 'Continue',
      pageBg: Assets.images.background.onboardScreenOneBg.path,
    ),
    OnBoardModel(
      title: const OnboardCareTitle(),
      image: Assets.images.onboard.onboardImageOne.path,
      buttonText: 'Continue',
      pageBg: Assets.images.background.onboardScreenOneBg.path,
    ),
  ];
}
