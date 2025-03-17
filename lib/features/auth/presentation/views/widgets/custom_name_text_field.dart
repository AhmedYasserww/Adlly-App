import 'package:adlly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_text_form_field_widget.dart';
class NameField extends StatelessWidget {
  final TextEditingController nameController;

  const NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      keyboardType:TextInputType.text ,
      controller: nameController,
      validator: (value) => value == null || value.isEmpty ? 'required this field' : null,
     hintText: "Full Name",
      prefixIcon: Icon(Icons.person,color: AppColors.lightPrimaryColor ),
    );
  }
}