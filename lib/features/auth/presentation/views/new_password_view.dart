import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/new_password_view_body.dart';
import 'package:flutter/material.dart';
class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});
  static const routeName = 'NewPasswordView';

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      appBar:CustomAppBar(title: "New Password",) ,
      body: NewPasswordViewBody(),
    );
  }
}
