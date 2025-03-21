import 'package:adlly_app/core/helper_functions/custom_launch_url.dart';
import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/support/presentation/views/widgets/custom_container_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SupportViewBody extends StatelessWidget {
  const SupportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          CustomContainerTile(
            title: "Contact via Email",

            leading: const Icon(Icons.email,color: AppColors.primaryColor,),
            onTap: ()  {

              customLaunchUrl(context,'mailto:ahmedyasser2105ww@gmail.com');

            },
          ),
          const SizedBox(height: 16),
          CustomContainerTile(
            title: "Contact via Messenger",
            leading:const Icon(  FontAwesomeIcons.facebookMessenger,color: AppColors.primaryColor,),

            onTap: ()  {
              customLaunchUrl(context,'https://m.me/100028014644253');
            },
          ),
          const SizedBox(height: 16),
          CustomContainerTile(
            title: "Contact via Whatsapp",
            leading:const Icon( FontAwesomeIcons.whatsapp,color: AppColors.primaryColor,),
            onTap: ()  {
              customLaunchUrl(context,'https://wa.me/+201147355363');

            },
          ),
        ],
      ),
    );
  }
}
