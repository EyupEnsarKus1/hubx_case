import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_fonts.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/features/home/domain/entities/question_entity.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  final VoidCallback? onTap;

  const QuestionCard({
    super.key,
    required this.question,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 1.sw * 0.65,
        height: 1.sw * 0.45,
        margin: HubxPadding.p8.horizontal,
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(HubxSizes.size12),
                child: HubxImageWidget(
                  imageUrl: question.imageUri,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Glass Effect Overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(HubxSizes.size12),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      HubxColors.black.withValues(alpha: 0.3),
                      HubxColors.black.withValues(alpha: 0.6),
                    ],
                  ),
                ),
              ),
            ),

            // Bottom Content Container with Glass Effect
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: HubxPadding.p14.horizontal + HubxPadding.p10.vertical,
                decoration: BoxDecoration(
                  color: HubxColors.black.withValues(alpha: 0.20),
                  border: Border.all(
                    width: 1,
                    color: HubxColors.white.withValues(alpha: 0.10),
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  // Backdrop filter effect
                  boxShadow: [
                    BoxShadow(
                      color: HubxColors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: question.title,
                        style: TextStyle(
                          color: HubxColors.white,
                          fontSize: 15.sp,
                          fontFamily: HubxFonts.primaryFont,
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                        ),
                      ),
                      if (question.subtitle.isNotEmpty)
                        TextSpan(
                          text: ' ${question.subtitle}',
                          style: TextStyle(
                            color: HubxColors.white,
                            fontSize: 15.sp,
                            fontFamily: HubxFonts.primaryFont,
                            fontWeight: FontWeight.w500,
                            height: 1.33,
                          ),
                        ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
