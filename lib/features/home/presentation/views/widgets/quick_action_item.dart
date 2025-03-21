import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
class QuickActionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;
  const QuickActionItem({super.key, required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              child: Icon(icon, color: AppColors.primaryColor),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
