import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:adlly_app/core/widgets/show_success_dialog.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/confirm_password_field.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:adlly_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
class NewPasswordViewBody extends StatefulWidget {
  const NewPasswordViewBody({super.key});

  @override
  State<NewPasswordViewBody> createState() => _NewPasswordViewBodyState();
}

class _NewPasswordViewBodyState extends State<NewPasswordViewBody> {
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

  void togglePasswordVisibility() => setState(() => passwordVisible = !passwordVisible);
  void toggleConfirmPasswordVisibility() => setState(() => confirmPasswordVisible = !confirmPasswordVisible);

  @override
  void initState() {
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child:  Column(
          children: [
            const SizedBox(
              height: 24,
            ),
         Text(S.of(context).create_password_description,style: AppTextStyles.semiBold16,),
            const SizedBox(height: 34,),
            PasswordField(passwordController: passwordController,
                visible: passwordVisible,
                toggleVisibility: togglePasswordVisibility),
            const SizedBox(height: 24,),
            ConfirmPasswordField(passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
                visible: confirmPasswordVisible,
                toggleVisibility: toggleConfirmPasswordVisibility
                ),
        const SizedBox(height: 24,),
            CustomButton(text: S.of(context).change_password,onPressed: (){
              showSuccessDialog(context);
            },)
          ],
        ),
      ),
    );
  }


}
