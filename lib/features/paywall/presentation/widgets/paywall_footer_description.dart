import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design_system/theme/hubx_colors.dart';
import '../../../../core/design_system/theme/hubx_fonts.dart';
import '../../../../core/design_system/theme/hubx_padding.dart';

class PaywallFooterDescription extends StatelessWidget {
  const PaywallFooterDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HubxPadding.p20.horizontal + HubxPadding.p10.onlyBottom,
      child: Text(
        "After the 3-day free trial period you'll be charged ₺274.99 per year unless you cancel before the trial expires. Yearly Subscription is Auto-Renewable",
        style: TextStyle(
          fontFamily: HubxFonts.primaryFont,
          fontWeight: HubxFontWeights.regular,
          fontSize: 9.sp,
          color: HubxColors.white.withValues(alpha: 0.2),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
