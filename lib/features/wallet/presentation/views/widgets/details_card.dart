import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.receipt_long, color: AppColors.primaryColor),
          const SizedBox(width: 8),
          Text(
            "Details Account Statement",
            style: AppTextStyles.bold19.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
