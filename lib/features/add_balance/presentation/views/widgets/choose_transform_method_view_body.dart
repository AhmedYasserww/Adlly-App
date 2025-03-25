
import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:adlly_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:adlly_app/core/widgets/transform_method_item.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/attachment_section.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/custom_support_button.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/phone_number_field_wallet.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/warning_text.dart';
import 'package:flutter/material.dart';

class ChooseTransformMethodViewBody extends StatefulWidget {
  const ChooseTransformMethodViewBody({super.key, this.amount});
  final String ? amount;

  @override
  State<ChooseTransformMethodViewBody> createState() => _ChooseTransformMethodViewBodyState();
}

class _ChooseTransformMethodViewBodyState extends State<ChooseTransformMethodViewBody> {
  late TextEditingController phoneNumberController;
  late TextEditingController amountController;

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
    amountController = TextEditingController(text: widget.amount?? "0");

  }
  @override
  void dispose() {
    phoneNumberController.dispose();
    amountController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
          "Please choose a transfer method",
          style: AppTextStyles.bold19
        ),
            const SizedBox(height: 20),
            const TransferMethodItem(
              icon: Icons.account_balance_wallet,
              title: "Transfer via Vodafone Cash",
              number: "01092308465",
            ),
            const  SizedBox(height: 20),
            const TransferMethodItem(
              icon: Icons.payment,
              title: "Transfer via Instapay",
              number: "01092308465",
            ),
            const SizedBox(height: 20),
            const CustomSupportButton(),
            const SizedBox(height: 20),
             CustomTextFieldWidget(
              readOnly: true,
               controller: amountController,
             ),
            const SizedBox(height: 20),
            const WarningText(),
            const SizedBox(height: 20),
            const AttachmentSection(),
            const SizedBox(height: 20),
             PhoneNumberFieldWallet(
              phoneController:phoneNumberController ,
            ),
            const SizedBox(height: 30),
             CustomButton(text: "Submit", onPressed:(){}),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}







