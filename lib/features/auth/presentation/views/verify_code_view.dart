import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/verify_code_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});
  static const String routeName = 'verify-code';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: S.of(context).verify_code,),
      body:  const VerifyCodeViewBody(),
    );
  }
}
