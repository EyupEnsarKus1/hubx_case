import 'package:flutter/material.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';

import '../../../../generated/assets.gen.dart';

class PaywallPage extends StatelessWidget {
  static const String routeName = '/paywall';
  static const String routePath = '/paywall';
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      body: Stack(
        children: [
          HubxImageWidget(
            assetPath: Assets.images.paywall.paywallHeaderImage.path,
          ),
        ],
      ),
    );
  }
}
