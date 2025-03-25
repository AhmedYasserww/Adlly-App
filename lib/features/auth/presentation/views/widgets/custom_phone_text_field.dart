import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/widgets/custom_text_form_field_widget.dart';
import '../../../../../generated/l10n.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneNumberField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldWidget(
      keyboardType: TextInputType.number,
        hintText: S.of(context).phone_number,
        controller: phoneController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return S.of(context).requird_this_field;
          } else if (value.length != 11) {
            return S.of(context).vaild_phone_number;
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
