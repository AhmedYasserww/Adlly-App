import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class CustomSectionTitle extends StatelessWidget {
  final String title;
  const CustomSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.bold23.copyWith(color: AppColors.primaryColor),
    );
  }
}
