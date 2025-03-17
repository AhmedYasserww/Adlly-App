import 'dart:developer';

import 'package:adlly_app/core/utils/app_color.dart';
import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/utils/app_text_styles.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.center ,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text.rich(
                TextSpan(
                  text: "Enter the 6-digit code sent to \n",
                  style: AppTextStyles.semiBold16,
                  children: [
                    TextSpan(
                      text: "ahmedYasser@gmail.com",
                      style: AppTextStyles.semiBold16.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 32),
          PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: false,
            keyboardType: TextInputType.number,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(8),
              fieldHeight: 50,
              fieldWidth: 50,
              activeFillColor: Colors.white,
              inactiveColor: const Color(0xFFDCDEDE),
              activeColor: AppColors.primaryColor,
              selectedColor: AppColors.secondaryColor,
            ),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
           // enableActiveFill: true,
            onChanged: (value) {
                log("Entered code: $value");
            },
          ),
          const SizedBox(height: 30,),
          CustomButton(text: "Verify",onPressed: (){},),
        ],
      ),
    );
  }
}
