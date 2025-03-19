import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_text_form_field_widget.dart';
import '../../../../../generated/l10n.dart';
class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final bool visible;
  final VoidCallback toggleVisibility;

  const PasswordField({
    super.key,
    required this.passwordController,
    required this.visible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      keyboardType: TextInputType.visiblePassword,
      hintText: S.of(context).password,
      controller: passwordController,
      obscureText: visible,
      validator: (value){
        if (value == null || value.isEmpty) {
          return S.of(context).requird_this_field;
        }
        if (value.length < 6) {
          return S.of(context).password_must_be_at_least_6_characters;
        }
        return null;
      },


      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: Icon(visible ? Icons.visibility_off : Icons.visibility,color: const Color(0xffC9CECF),),
      ),
      prefixIcon: const Icon(Icons.lock,color: AppColors.lightPrimaryColor ),

    );
  }
}