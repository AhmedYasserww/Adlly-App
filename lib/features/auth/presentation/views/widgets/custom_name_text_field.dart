import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_text_form_field_widget.dart';
import '../../../../../generated/l10n.dart';
class NameField extends StatelessWidget {
  final TextEditingController nameController;

  const NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      keyboardType:TextInputType.text ,
      controller: nameController,
      validator: (value) => value == null || value.isEmpty ? S.of(context).requird_this_field : null,
     hintText: S.of(context).full_name,
      prefixIcon: const Icon(Icons.person,color: AppColors.lightPrimaryColor ),
    );
  }
}