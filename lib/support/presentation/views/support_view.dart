import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:adlly_app/support/presentation/views/widgets/support_view_body.dart';
import 'package:flutter/material.dart';
class SupportView extends StatelessWidget {
  const SupportView({super.key});
  static const String routeName = "support_view";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Support"),
      body: SupportViewBody(),
    );
  }
}
