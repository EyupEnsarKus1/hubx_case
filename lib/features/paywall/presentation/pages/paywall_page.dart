import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/custom_widgets/hubx_button.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';

import '../../../../generated/assets.gen.dart';
import '../widgets/feature_cards.dart';
import '../widgets/subscription_plan_card.dart';

class PaywallPage extends StatelessWidget {
  static const String routeName = '/paywall';
  static const String routePath = '/paywall';
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      body: Container(
        color: HubxColors.paywallBackground,
        child: SingleChildScrollView(
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
              Text(
                "Access All Features",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: HubxColors.white70,
                  fontSize: 17.sp,
                  letterSpacing: 0.38.sp,
                ),
              ),
              FeatureCards(),
              SubscriptionPlanCard(
                isSelected: true,
              ),
              HubxButton(
                title: "Try free for 3 days",
                onPressed: () {},
                margin: HubxPadding.p20.horizontal + HubxPadding.p24.onlyTop + HubxPadding.p10.onlyBottom,
              ),
              Padding(
                padding: HubxPadding.p20.horizontal,
                child: Text(
                  "After the 3-day free trial period you’ll be charged ₺274.99 per year unless you cancel before the trial expires. Yearly Subscription is Auto-Renewable",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: HubxColors.white.withValues(alpha: 52),
                    fontSize: 9.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
