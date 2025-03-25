import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class AttachmentSection extends StatelessWidget {
  const AttachmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.attachment_outlined, color: AppColors.primaryColor, size: 32),
        SizedBox(width: 10),
        Expanded(child: FittedBox(
          fit: BoxFit.scaleDown,
            child: Text("Please attach a screenshot of the transfer", style: AppTextStyles.semiBold16))),
      ],
    );
  }
}
