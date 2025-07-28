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
        margin: HubxPadding.p4.horizontal,

        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(HubxSizes.size12),
                child: HubxImageWidget(
                  imageUrl: question.imageUri,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(
              bottom: HubxSizes.size10,
              left: HubxSizes.size14,
              child: Text(
                question.title,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
