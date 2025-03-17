import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';
class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  static const String routeName = 'forget-password';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Forget Password",),
      body: ForgetPasswordViewBody(),
    );
  }
}
