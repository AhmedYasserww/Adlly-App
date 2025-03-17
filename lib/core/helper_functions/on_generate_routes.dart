
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // case SplashView.routeName:
    //   return MaterialPageRoute(builder: (context) => const SplashView());
    // case OnBoardingView.routeName:
    //   return MaterialPageRoute(builder: (context) => const OnBoardingView());
    // case SignInView.routeName:
    //   return MaterialPageRoute(builder: (context) => const SignInView());
    // case SignUpView.routeName:
    //   return MaterialPageRoute(builder: (context) => const SignUpView());
    //   case HomeView.routeName:
    //   return MaterialPageRoute(builder: (context) => const HomeView());
    //   case BestSellingView.routeName:
    //     return MaterialPageRoute(builder: (context) => const BestSellingView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
