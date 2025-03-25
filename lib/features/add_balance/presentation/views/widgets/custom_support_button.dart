import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/support/presentation/views/support_view.dart';
import 'package:flutter/material.dart';
class CustomSupportButton extends StatelessWidget {
  const CustomSupportButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.of(context).pushNamed(SupportView.routeName);
      },
      icon: const Icon(Icons.support_agent),
      label: const Text("Support"),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
    );
  }
}

