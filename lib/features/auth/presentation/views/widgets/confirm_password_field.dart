import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_text_form_field_widget.dart';
import '../../../../../generated/l10n.dart';

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
      hintText: S.of(context).confirm_password,
      controller: confirmPasswordController,
      obscureText: visible,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).requird_this_field;
        }
        if (value.length < 6) {
          return S.of(context).password_must_be_at_least_6_characters;
        }
        if (value != passwordController.text) {
          return S.of(context).confirm_password_not_match;
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
