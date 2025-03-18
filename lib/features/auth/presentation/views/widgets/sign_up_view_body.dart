
import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/confirm_password_field.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_name_text_field.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_phone_text_field.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;
  late TextEditingController confirmPasswordController;
  late bool  isTermsAccepted = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;


  void togglePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }
  void toggleConfirmPasswordVisibility() {
    setState(() {
      confirmPasswordVisible = !confirmPasswordVisible;
    });
  }
  @override
  void initState() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
nameController.dispose();
emailController.dispose();
passwordController.dispose();
phoneController.dispose();
confirmPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24,),
          NameField(nameController: nameController),
              const SizedBox(height: 16,),
              PhoneNumberField(
                phoneController:phoneController ,
              ),
              const SizedBox(height: 16,),
              EmailField(emailController: emailController),
              const SizedBox(height: 16,),
              PasswordField(
                  passwordController: passwordController,
                  visible: passwordVisible,
                  toggleVisibility: togglePasswordVisibility
              ),
              const SizedBox(height: 16,),
              ConfirmPasswordField(
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                  visible: confirmPasswordVisible,
                  toggleVisibility: toggleConfirmPasswordVisibility
              ),
              const SizedBox(height:30 ,),
              CustomButton(
                onPressed: (){},
                // onPressed: (){
                //   if(formKey.currentState!.validate()){
                //     formKey.currentState!.save();
                //     if (isTermsAccepted) {
                //       context.read<SignUpCubit>().createUserWithEmailAndPassword(name: nameController.text,
                //           email: emailController.text,
                //           password: passwordController.text);
                //     }
                //     else{
                //       buildErrorBar(context, "يجب عليك الموافقة على الشروط والأحكام");
                //     }
                //   }else{
                //     setState(() {
                //       autoValidateMode = AutovalidateMode.always;
                //     });
                //   }
                // },
                text: "Sign Up",
              ),
              const HaveAnAccountWidget()
            ],
          ),
        ),
      ),
    );
  }
}
