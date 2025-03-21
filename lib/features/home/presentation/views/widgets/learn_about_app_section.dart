import 'package:adlly_app/constant.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/build_number_indicator.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/learn_about_app_header_widget.dart';
import 'package:adlly_app/support/presentation/views/widgets/custom_container_tile.dart';
import 'package:flutter/material.dart';
class LearnAboutAppSection extends StatelessWidget {
  const LearnAboutAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const LearnAboutAppHeaderWidget(),
        const SizedBox(height: 8,),
        CustomContainerTile(
          subtitle: "Learn how $appName works",
          title: "What is $appName?",
          leading: const BuildNumberIndicator(number: '1',),
          onTap: () {},
        ),
        const SizedBox(height: 16),
        CustomContainerTile(
          title: "How to recharge your wallet?",
          subtitle: "Recharge using local payment methods",
          leading: const BuildNumberIndicator(number: "2",),
          onTap: () {},
        ),
        const SizedBox(height: 16),
        CustomContainerTile(
          title: "How to create an ad?",
          subtitle: "Learn How to create an ad with easy steps",
          leading: const BuildNumberIndicator(number: "3",),
          onTap: () {},
        ),

      ],
    );
  }
}
