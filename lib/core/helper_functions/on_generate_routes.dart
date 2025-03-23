
import 'package:adlly_app/features/add_balance/presentation/views/add_balance_view.dart';
import 'package:adlly_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:adlly_app/features/auth/presentation/views/new_password_view.dart';
import 'package:adlly_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:adlly_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:adlly_app/features/auth/presentation/views/verify_code_view.dart';
import 'package:adlly_app/features/home/presentation/views/home_view.dart';
import 'package:adlly_app/support/presentation/views/support_view.dart';
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
      case SupportView.routeName:
      return MaterialPageRoute(builder: (context) => const SupportView());
      case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
      case AddBalanceView.routeName:
      return MaterialPageRoute(builder: (context) => const AddBalanceView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
