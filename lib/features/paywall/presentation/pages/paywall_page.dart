import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/custom_widgets/hubx_button.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';

import '../../../../generated/assets.gen.dart';
import '../../data/subscription_model.dart';
import '../widgets/feature_cards.dart';
import '../widgets/footer.dart';
import '../widgets/paywall_footer_description.dart';
import '../widgets/subscription_plan_card.dart';

class PaywallPage extends StatefulWidget {
  static const String routeName = '/paywall';
  static const String routePath = '/paywall';
  const PaywallPage({super.key});

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage> {
  List<SubscriptionModel> subscriptions = SubscriptionModel.samplePlans;

  void _selectPlan(String planId) {
    setState(() {
      subscriptions = subscriptions.map((plan) {
        return plan.copyWith(isSelected: plan.planId == planId);
      }).toList();
    });
  }

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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "PlantApp",
                      style: TextStyle(
                        fontFamily: HubxFonts.primaryFont,
                        fontWeight: FontWeight.w900,
                        fontSize: 24.sp,
                        color: HubxColors.white,
                      ),
                    ),
                    TextSpan(
                      text: "Premium",
                      style: TextStyle(
                        fontFamily: HubxFonts.primaryFont,
                        fontWeight: HubxFontWeights.light,
                        fontSize: 27.sp,
                        color: HubxColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Access All Features",
                style: TextStyle(
                  fontFamily: HubxFonts.primaryFont,
                  fontWeight: HubxFontWeights.regular,
                  fontSize: 17.sp,
                  color: HubxColors.white70,
                  letterSpacing: 0.38.sp,
                ),
              ),
              const FeatureCards(),
              ...subscriptions
                  .map(
                    (subscription) => SubscriptionPlanCard(
                      subscription: subscription,
                      onTap: () => _selectPlan(subscription.planId),
                    ),
                  )
                  .toList(),
              HubxButton(
                title: "Try free for 3 days",
                onPressed: () {},
                margin: HubxPadding.p20.horizontal + HubxPadding.p8.onlyTop + HubxPadding.p10.onlyBottom,
              ),
              PaywallFooterDescription(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
