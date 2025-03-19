import 'package:adlly_app/core/helper_functions/on_generate_routes.dart';
import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:adlly_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
     //locale: Locale('en'),


      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Cairo',
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
         onGenerateRoute: onGenerateRoutes,
       initialRoute: SignInView.routeName
      // initialRoute: HomeView.routeName
    //  home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).login),),
    );
  }
}
