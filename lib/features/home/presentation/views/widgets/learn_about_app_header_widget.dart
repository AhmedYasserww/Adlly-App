import 'package:flutter/material.dart';

import '../../../../../constant.dart';
class LearnAboutAppHeaderWidget extends StatelessWidget {
  const LearnAboutAppHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Learn about $appName 👀", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
      ],
    );
  }
}
