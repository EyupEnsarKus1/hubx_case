import 'package:flutter/material.dart';
import 'package:hubx_case/features/onboarding/data/onboard_model.dart';

import '../../../generated/assets.gen.dart';

List<OnBoardModel> onboardData = [
  OnBoardModel(
    title: Text('Welcome to HubX'),
    description: 'Identify more than 3000+ plants and 88% accuracy.',
    image: Assets.images.onboard.onboardImageOne.path,
    buttonText: 'Get Started',
    legacyText: Text("By tapping next, you are agreeing to PlantID Terms of Use & Privacy Policy."),
    pageBg: Assets.images.background.onboardScreenOneBg.path,
  ),
  OnBoardModel(
    title: const Text('Explore Plants'),
    image: Assets.images.onboard.onboardImageTwo.path,
    buttonText: 'Continue',
    pageBg: Assets.images.background.onboardScreenOneBg.path,
  ),
  OnBoardModel(
    title: const Text('Join the Community'),
    image: Assets.images.onboard.onboardImageOne.path,
    buttonText: 'Continue',
    pageBg: Assets.images.background.onboardScreenOneBg.path,
  ),
];
