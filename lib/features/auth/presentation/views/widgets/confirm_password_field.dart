import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_text_form_field_widget.dart';

class ConfirmPasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final bool visible;
  final VoidCallback toggleVisibility;

  const ConfirmPasswordField({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.visible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      keyboardType: TextInputType.visiblePassword,
      hintText: "Confirm Password",
      controller: confirmPasswordController,
      obscureText: visible,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Required this field';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        if (value != passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: Icon(visible ? Icons.visibility_off : Icons.visibility, color: const Color(0xffC9CECF)),
      ),
      prefixIcon: const Icon(Icons.lock, color: AppColors.lightPrimaryColor),
    );
  }
}
