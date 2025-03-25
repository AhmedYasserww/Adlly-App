import 'dart:developer';

import 'package:adlly_app/features/add_balance/presentation/views/widgets/choose_transform_method_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
class ChooseTransformMethodView extends StatelessWidget {
  const ChooseTransformMethodView({super.key, this.amount});
  static const routeName = "ChooseTransformMethodView";
  final String? amount;


  @override
  Widget build(BuildContext context) {
    log("Received amount in view: $amount");
    return  Scaffold(
      appBar: const CustomAppBar(title: "Choose Transform Method",),
      body: ChooseTransformMethodViewBody(amount:  amount ?? "0",),

    );
  }
}
