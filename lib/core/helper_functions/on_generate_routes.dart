
import 'package:adlly_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:adlly_app/features/auth/presentation/views/new_password_view.dart';
import 'package:adlly_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:adlly_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:adlly_app/features/auth/presentation/views/verify_code_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
     case ForgetPasswordView.routeName:
      return MaterialPageRoute(builder: (context) => const ForgetPasswordView());
      case VerifyCodeView.routeName:
      return MaterialPageRoute(builder: (context) => const VerifyCodeView());
      case NewPasswordView.routeName:
      return MaterialPageRoute(builder: (context) => const NewPasswordView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
