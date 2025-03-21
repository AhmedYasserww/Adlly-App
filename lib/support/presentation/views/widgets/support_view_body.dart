import 'package:adlly_app/core/helper_functions/custom_launch_url.dart';
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
            leading: Icons.email,
            onTap: ()  {

              customLaunchUrl(context,'mailto:ahmedyasser2105ww@gmail.com');

            },
          ),
          const SizedBox(height: 16),
          CustomContainerTile(
            title: "Contact via Messenger",
            leading: FontAwesomeIcons.facebookMessenger,
            onTap: ()  {
              customLaunchUrl(context,'https://m.me/100028014644253');
            },
          ),
          const SizedBox(height: 16),
          CustomContainerTile(
            title: "Contact via Whatsapp",
            leading: FontAwesomeIcons.whatsapp,
            onTap: ()  {
              customLaunchUrl(context,'https://wa.me/+201147355363');

            },
          ),
        ],
      ),
    );
  }
}
