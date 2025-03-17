import 'package:adlly_app/features/auth/presentation/views/widgets/sign_in_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
static const String routeName = 'LogInView';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  const Text(
          "Login",
          style:  TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SignInViewBodyBlocConsumer(),
    );
  }
}





