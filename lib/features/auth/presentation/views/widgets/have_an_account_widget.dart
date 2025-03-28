import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).do_you_have_an_account,
          style: AppTextStyles.semiBold16.copyWith(
            color: const Color(0xFF949D9E),
          ),
        ),
        const SizedBox(width: 5),
        TextButton(
          onPressed: () {
Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text(
            S.of(context).login,
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
