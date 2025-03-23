import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:adlly_app/core/utils/app_color.dart';
class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          Text("Your Balance in Wallet", style: AppTextStyles.bold19),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text("1000", style: AppTextStyles.bold32),
              SizedBox(width: 6),
              Text("EGP", style: AppTextStyles.medium15),
            ],
          ),
        ],
      ),
    );
  }
}
