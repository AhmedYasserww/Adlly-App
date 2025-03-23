import 'package:adlly_app/core/widgets/custom_app_bar.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/add_balance_view_body.dart';
import 'package:flutter/material.dart';
class AddBalanceView extends StatelessWidget {
  const AddBalanceView({super.key});
static const String routeName = "add_balance_view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Add Balance",),
      body: AddBalanceViewBody(),
    );
  }
}
