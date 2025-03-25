import 'package:adlly_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:adlly_app/generated/l10n.dart';
import 'package:flutter/material.dart';
class PhoneNumberFieldWallet extends StatelessWidget {
  const PhoneNumberFieldWallet({super.key, required this.phoneController});
  final TextEditingController phoneController;


  @override
  Widget build(BuildContext context) {
    return CustomTextFieldWidget(
      keyboardType: TextInputType.number,
      hintText: "Phone Number or Instapay",
      controller: phoneController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).requird_this_field;
        } else if (value.length != 11) {
          return S.of(context).vaild_phone_number;
        }
        return null;
      },
    );
  }
}
