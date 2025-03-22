import 'dart:developer';

import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/home_header_section.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/learn_about_app_section.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/out_other_services_title.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/quick_action_widget.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    String width = MediaQuery.of(context).size.width.toString();
    log(width);
    return Scaffold(
      appBar: const CustomHomeAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const HomeHeaderSection(),
            const SizedBox(height: 24),
            const QuickActionsWidget(),
            const SizedBox(height: 24),
            const OurOtherServicesTitle(),
            const SizedBox(height: 16),
            CustomButton(text: "Browse Our Services", onPressed: () {}),
            const SizedBox(height: 16),
          const LearnAboutAppSection(),
            const SizedBox(height: 24,)
          ],
        ),
      ),
    );
  }
}




