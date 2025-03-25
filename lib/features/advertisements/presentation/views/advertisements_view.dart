import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/features/advertisements/presentation/views/widgets/advertisements_view_body.dart';
import 'package:flutter/material.dart';
class AdvertisementsView extends StatelessWidget {
  const AdvertisementsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Advertisements",style: AppTextStyles.bold19,),
      ),
      body: const AdvertisementsViewBody(),
    );
  }
}
