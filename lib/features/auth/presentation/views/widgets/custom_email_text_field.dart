import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field_widget.dart';
import '../../../../../generated/l10n.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldWidget(
      keyboardType: TextInputType.emailAddress,

     hintText: S.of(context).email,
      controller: emailController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).requird_this_field;
        }
        final bool emailValid = RegExp(
          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
        ).hasMatch(value);
        return emailValid ? null : S.of(context).vaild_email;
      },
      prefixIcon: const Icon(Icons.email,color: AppColors.lightPrimaryColor ),
    );
  }
}