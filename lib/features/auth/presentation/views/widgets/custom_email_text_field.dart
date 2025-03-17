import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_text_form_field_widget.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,

      hintText: "Email",
      controller: emailController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'required this field';
        }
        final bool emailValid = RegExp(
          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
        ).hasMatch(value);
        return emailValid ? null : 'please enter a valid email';
      },
    );
  }
}