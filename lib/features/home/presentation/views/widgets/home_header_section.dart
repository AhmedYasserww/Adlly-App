import 'package:adlly_app/constant.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Try $appName and create your first ad 🚀",
            style:AppTextStyles.bold19,
          ),
        ),
        const SizedBox(height: 8),
         FittedBox(
           fit: BoxFit.scaleDown,
           child: Text(
            "Start now and boost your business easily!",
            style: AppTextStyles.semiBold16,
                   ),
         ),
      ],
    );
  }
}
