import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
class BuildNumberIndicator extends StatelessWidget {
  final String number;
  const BuildNumberIndicator({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: AppColors.lightPrimaryColor,
      child: Text(
        number,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
