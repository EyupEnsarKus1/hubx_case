import 'package:flutter/material.dart';
import 'package:hubx_case/features/paywall/data/feature_model.dart';
import 'package:hubx_case/features/paywall/presentation/widgets/single_feature_card.dart';

import '../../../../generated/assets.gen.dart';

class FeatureCards extends StatelessWidget {
  const FeatureCards({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FeatureModel> features = [
      FeatureModel(
        title: "Unlimited",
        description: "Plant Identify",
        iconPath: Assets.icons.svgIcons.paywall.unlimited,
      ),
      FeatureModel(
        title: "Faster",
        description: "Process",
        iconPath: Assets.icons.svgIcons.paywall.faster,
      ),
      FeatureModel(
        title: "Detailed",
        description: "Plant care",
        iconPath: Assets.icons.svgIcons.paywall.faster,
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        features.length,
        (index) => SingleFeatureCard(feature: features[index]),
      ),
    );
  }
}
