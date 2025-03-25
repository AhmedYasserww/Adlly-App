import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class TransferMethodItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String number;

  const TransferMethodItem({
    super.key,
    required this.icon,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primaryColor, size: 40),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.bold16
            ),
            Row(
              children: [
                Text(number, style: AppTextStyles.bold16),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: number));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Copied to clipboard!"),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  icon: const Icon(Icons.copy, color:Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

