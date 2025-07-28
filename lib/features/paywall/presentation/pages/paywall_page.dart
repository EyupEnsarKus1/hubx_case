import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_button.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';
import 'package:hubx_case/features/home/presentation/pages/home_page.dart';

import '../../../../generated/assets.gen.dart';
import '../../data/subscription_model.dart';
import '../widgets/feature_cards.dart';
import '../widgets/footer.dart';
import '../widgets/paywall_footer_description.dart';
import '../widgets/paywall_header.dart';
import '../widgets/subscription_plan_card.dart';

class PaywallPage extends StatefulWidget {
  static const String routeName = '/home/paywall';
  static const String routePath = '/home/paywall';
  const PaywallPage({super.key});

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage> {
  List<SubscriptionModel> subscriptions = SubscriptionModel.samplePlans;

  @override
  void initState() {
    super.initState();
    // Status bar ikonlarını beyaz yap
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void dispose() {
    // Sayfa kapandığında status bar stilini varsayılana döndür
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
    super.dispose();
  }

  void _selectPlan(String planId) {
    setState(() {
      subscriptions = subscriptions.map((plan) {
        return plan.copyWith(isSelected: plan.planId == planId);
      }).toList();
    });
  }

  void _closePaywall() {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return HubxScaffold(
      backgroundColor: HubxColors.paywallBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaywallHeader(onClose: _closePaywall),
            24.verticalSpace,
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
              onPressed: () {
                context.go(HomePage.routePath);
              },
              margin: HubxPadding.p20.horizontal + HubxPadding.p8.onlyTop + HubxPadding.p10.onlyBottom,
            ),
            PaywallFooterDescription(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
