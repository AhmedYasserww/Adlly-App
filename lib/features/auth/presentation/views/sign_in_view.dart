import 'package:adlly_app/features/auth/presentation/views/widgets/sign_in_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
static const String routeName = 'LogInView';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title:   Text(
          S.of(context).login,
          style:  const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SignInViewBodyBlocConsumer(),
    );
  }
}





