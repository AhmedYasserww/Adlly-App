import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/utils/app_images.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/core/widgets/notification_widget.dart';
import 'package:adlly_app/support/presentation/views/support_view.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title:const  Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AppImages.appIcon),
          ),
          SizedBox(width: 10),
          Text(
            "Welcome, Ahmed 👋",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, SupportView.routeName);
          },
          child: Container(
            decoration:  BoxDecoration(
              color:AppColors.lightPrimaryColor,
              borderRadius: BorderRadius.circular(8),

            ),

            child: const Padding(
              padding:  EdgeInsets.all(6),
              child: Text("Support",style: AppTextStyles.bold16),
            ),
          ),
        ),
        const SizedBox(width: 10),
        NotificationWidget(onTap: (){},),
        const SizedBox(width: 10),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(50);
}
