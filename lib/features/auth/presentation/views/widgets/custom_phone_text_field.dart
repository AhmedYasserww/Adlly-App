import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/widgets/custom_text_form_field_widget.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneNumberField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        hintText: "Phone Number",
        controller: phoneController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required. Please enter a phone number.';
          } else if (value.length != 11) {
            return 'Phone number must be exactly 11 digits long.';
          }
          return null;
        },
        prefixIcon: const Icon(
          Icons.phone,
          color: AppColors.lightPrimaryColor,
        )
    );
  }
}
