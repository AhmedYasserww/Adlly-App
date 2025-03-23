import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PaymentDetailRow extends StatelessWidget {
  final String label;
  final String amount;

  const PaymentDetailRow({super.key, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.regular18),
          Row(
            children: [
              Text(
                  amount,
                  style: AppTextStyles.bold19
              ),
              const SizedBox(width: 8),
              Text(
                "EGP",
                style: AppTextStyles.regular18.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
