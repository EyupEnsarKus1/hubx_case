import 'package:flutter/material.dart';

import '../../../../core/custom_widgets/hubx_images_widgets.dart';
import '../../../../core/design_system/theme/hubx_padding.dart';
import '../../../../generated/assets.gen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HubxImageWidget(
          assetPath: Assets.images.background.homeHeader.path,
        ),
        Padding(
          padding: HubxPadding.p20.horizontal,
          child: Column(
            children: [
              Text(
                "Hi, plant lover!",
              ),
              Text("Good Afternoon! ⛅"),
            ],
          ),
        ),
      ],
    );
  }
}
