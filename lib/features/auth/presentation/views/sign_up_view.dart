
import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/sign_up_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = '/signUpView';

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: CustomAppBar(title:S.of(context).sign_up),
      body: SignUpViewBodyBlocConsumer(),
    );
  }
}

