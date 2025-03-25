import 'package:flutter/material.dart';
class WarningText extends StatelessWidget {
  const WarningText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Please transfer the exact amount without any excess or shortage for faster processing.",
      style: TextStyle(color: Colors.red),
    );
  }
}
