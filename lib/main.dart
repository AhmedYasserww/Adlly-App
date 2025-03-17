import 'package:adlly_app/core/helper_functions/on_generate_routes.dart';
import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
          scaffoldBackgroundColor: Colors.white,

          fontFamily: 'Cairo',
          colorScheme: ColorScheme.fromSeed(
              seedColor:AppColors.primaryColor
          )
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SignInView.routeName
      // initialRoute: HomeView.routeName

    );
  }
}