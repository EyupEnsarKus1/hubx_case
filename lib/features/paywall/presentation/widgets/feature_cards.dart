import 'package:flutter/material.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
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
        iconPath: Assets.icons.paywall.unlimited,
      ),
      FeatureModel(
        title: "Faster",
        description: "Process",
        iconPath: Assets.icons.paywall.faster,
      ),
      FeatureModel(
        title: "Detailed",
        description: "Plant care",
        iconPath: Assets.icons.paywall.detailed,
      ),
    ];
    return SingleChildScrollView(
      padding: HubxPadding.p12.horizontal + HubxPadding.p24.onlyBottom,
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          features.length,
          (index) => SingleFeatureCard(feature: features[index]),
        ),
      ),
    );
  }
}
