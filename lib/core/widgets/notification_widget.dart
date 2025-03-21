import 'package:adlly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: CircleAvatar(
          backgroundColor:const Color(0xFFEEF8ED) ,
          radius: 18,
          child: SvgPicture.asset(AppImages.notificationIcon)),
    );
  }
}