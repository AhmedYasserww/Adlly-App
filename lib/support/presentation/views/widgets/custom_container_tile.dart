import 'package:flutter/material.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/core/utils/app_color.dart'; // استيراد الألوان

class CustomContainerTile extends StatelessWidget {
  final String title;
  final IconData leading;
  final VoidCallback? onTap;

  const CustomContainerTile({
    super.key,
    required this.title,
    required this.leading,
    this.onTap,
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
            title: Text(
              title,
              style: AppTextStyles.regular18
            ),
            leading: Icon(leading, color: AppColors.primaryColor),
            trailing: const Icon(Icons.arrow_forward_ios, color:AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
