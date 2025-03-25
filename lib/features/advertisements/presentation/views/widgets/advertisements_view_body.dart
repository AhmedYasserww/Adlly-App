
import 'package:adlly_app/features/advertisements/presentation/views/widgets/all_advertisements_item.dart';
import 'package:flutter/material.dart';
class AdvertisementsViewBody extends StatelessWidget {
  const AdvertisementsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: AllAdvertisementItem(
          onTap: (){},
        ))
      ],
    );
  }
}

