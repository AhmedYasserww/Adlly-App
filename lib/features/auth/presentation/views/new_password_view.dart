import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/new_password_view_body.dart';
import 'package:adlly_app/generated/l10n.dart';
import 'package:flutter/material.dart';
class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});
  static const routeName = 'NewPasswordView';

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:CustomAppBar(title:S.of(context).new_password ,) ,
      body: NewPasswordViewBody(),
    );
  }
}
