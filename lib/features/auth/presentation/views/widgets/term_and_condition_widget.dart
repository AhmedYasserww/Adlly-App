import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget extends StatefulWidget {
  const TermsAndConditionWidget({super.key, required this.onTermsAccepted});
final ValueChanged<bool> onTermsAccepted;
  @override
  State<TermsAndConditionWidget> createState() => _TermsAndConditionWidgetState();
}

class _TermsAndConditionWidgetState extends State<TermsAndConditionWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomCheckBox(
          onCheckBoxPressed: (value){
           isTermsAccepted=value;
            widget.onTermsAccepted(value);
            setState(() {});

          },
          isChecked:isTermsAccepted,
       ),
        const SizedBox(width: 16,),
      Text("Remember me",style: AppTextStyles.semiBold13.copyWith(color: AppColors.lightPrimaryColor),),
      ],
    );
  }
}
