import 'package:flutter/material.dart';
import 'package:hubx_case/core/custom_widgets/hubx_button.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';

import '../../../../generated/assets.gen.dart';
import '../widgets/feature_cards.dart';

class PaywallPage extends StatelessWidget {
  static const String routeName = '/paywall';
  static const String routePath = '/paywall';
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      body: Container(
        color: HubxColors.paywallBackground,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: HubxImageWidget(
                fit: BoxFit.fitWidth,
                assetPath: Assets.images.paywall.paywallHeaderImage.path,
              ),
            ),
            Text("PlantApp"),
            Text("Access All Features"),
            FeatureCards(),
            HubxButton(
              title: "Try free for 3 days",
              onPressed: () {},
              margin: HubxPadding.p20.horizontal,
            ),
          ],
        ),
      ),
    );
  }
}
