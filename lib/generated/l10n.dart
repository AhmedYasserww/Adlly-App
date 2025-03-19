// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign in`
  String get login {
    return Intl.message('Sign in', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forget Password?`
  String get forget_password {
    return Intl.message(
      'Forget Password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message('Sign Up', name: 'sign_up', desc: '', args: []);
  }

  /// `Remember Me`
  String get remember_me {
    return Intl.message('Remember Me', name: 'remember_me', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an account?`
  String get do_you_have_an_account {
    return Intl.message(
      'Do you have an account?',
      name: 'do_you_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  /// `Sign in with Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgot_password_app_bar {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password_app_bar',
      desc: '',
      args: [],
    );
  }

  /// `please enter your email address to receive a password reset code .`
  String get forget_password_description {
    return Intl.message(
      'please enter your email address to receive a password reset code .',
      name: 'forget_password_description',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get send_code {
    return Intl.message('Send Code', name: 'send_code', desc: '', args: []);
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Create a new password for your account`
  String get create_password_description {
    return Intl.message(
      'Create a new password for your account',
      name: 'create_password_description',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verify_code {
    return Intl.message('Verify Code', name: 'verify_code', desc: '', args: []);
  }

  /// `Please enter the 6-digit code that sent to `
  String get verify_code_description {
    return Intl.message(
      'Please enter the 6-digit code that sent to ',
      name: 'verify_code_description',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Change Password Successfully`
  String get change_password_successfully {
    return Intl.message(
      'Change Password Successfully',
      name: 'change_password_successfully',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Password Not Match.`
  String get password_not_match {
    return Intl.message(
      'Password Not Match.',
      name: 'password_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password Not Match.`
  String get confirm_password_not_match {
    return Intl.message(
      'Confirm Password Not Match.',
      name: 'confirm_password_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Required this field`
  String get requird_this_field {
    return Intl.message(
      'Required this field',
      name: 'requird_this_field',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters.`
  String get password_must_be_at_least_6_characters {
    return Intl.message(
      'Password must be at least 6 characters.',
      name: 'password_must_be_at_least_6_characters',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address.`
  String get vaild_email {
    return Intl.message(
      'Please enter a valid email address.',
      name: 'vaild_email',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must be exactly 11 digits long.`
  String get vaild_phone_number {
    return Intl.message(
      'Phone number must be exactly 11 digits long.',
      name: 'vaild_phone_number',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
