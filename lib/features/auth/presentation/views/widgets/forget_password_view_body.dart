import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
 late TextEditingController emailController;
 @override
  void initState() {
    emailController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        children: [
          const SizedBox(height: 24 ,),
const Text("Please enter your email address to receive a password reset code .",style: AppTextStyles.semiBold16,),
          const SizedBox(height: 32,),
          EmailField(
              emailController: emailController
          ),
          const SizedBox(height: 30,),
          CustomButton(
            text: "Send Code",
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
