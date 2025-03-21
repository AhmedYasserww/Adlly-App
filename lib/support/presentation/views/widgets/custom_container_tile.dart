import 'package:flutter/material.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/core/utils/app_color.dart'; // استيراد الألوان

class CustomContainerTile extends StatelessWidget {
  final String title;
  final Widget? leading;
  final VoidCallback? onTap;
  final String? subtitle;

  const CustomContainerTile({
    super.key,
    required this.title,
    required this.leading,
    this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.lightPrimaryColor, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: InkWell(
          focusColor: AppColors.primaryColor,
          onTap: onTap,
          child: ListTile(
            subtitle: subtitle != null
                ? Text(subtitle!, style: AppTextStyles.medium15)
                : null,
            title: Text(
              title,
              style: AppTextStyles.regular18,
            ),
            leading: leading,
            trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
