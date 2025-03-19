import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/generated/l10n.dart';
import 'package:flutter/material.dart';
class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(
          color: Color(0xffDDDFDF),

        )),
        const SizedBox(width: 18,),
        Text(S.of(context).or,style: AppTextStyles.semiBold16,),
       const SizedBox(width: 18,),
        const Expanded(child: Divider()),
      ],
    );
  }
}
