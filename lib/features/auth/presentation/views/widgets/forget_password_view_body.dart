import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:adlly_app/features/auth/presentation/views/verify_code_view.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:adlly_app/generated/l10n.dart';
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
      child:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24 ,),
         Text(S.of(context).forget_password_description,style: AppTextStyles.semiBold16,  textAlign: TextAlign.center,),
            const SizedBox(height: 32,),
            EmailField(
                emailController: emailController
            ),
            const SizedBox(height: 30,),
            CustomButton(
                text:S.of(context).send_code,
              onPressed: (){
                Navigator.of(context).pushNamed(VerifyCodeView.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
