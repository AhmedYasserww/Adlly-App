import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';
class AllAdvertisementItem extends StatelessWidget {
  const AllAdvertisementItem({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
            color:const Color(0xFFEEF8ED),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0),
              ),
            ]
        ),
        child: const Padding(
          padding:  EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.bullhorn, color: AppColors.primaryColor, size: 40,),
              SizedBox(height: 8,),
              Text("All Advertisement", style: AppTextStyles.bold32)
            ],
          ),
        ),
      ),
    );
  }
}