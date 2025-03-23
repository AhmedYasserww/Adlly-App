import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
class AddBalanceView extends StatelessWidget {
  const AddBalanceView({super.key});
static String routeName = "addBalanceView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Add Balance",),
    );
  }
}
