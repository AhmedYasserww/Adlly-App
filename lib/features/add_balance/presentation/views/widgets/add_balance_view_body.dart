
import 'dart:developer';

import 'package:adlly_app/core/widgets/custom_button.dart';
import 'package:adlly_app/features/add_balance/presentation/views/choose_transform_method_view.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/amount_input_row_section.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/custom_section_title.dart';
import 'package:adlly_app/features/add_balance/presentation/views/widgets/payment_details_section.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AddBalanceViewBody extends StatefulWidget {
  const AddBalanceViewBody({super.key});

  @override
  State<AddBalanceViewBody> createState() => _AddBalanceViewBodyState();
}

class _AddBalanceViewBodyState extends State<AddBalanceViewBody> {
  late TextEditingController amountController;
  late TextEditingController chargingValueController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  double amount = 0.0;
  double vat = 0.0;
  double administration = 0.0;
  double totalCharge = 0.0;
  double administrationValue = 0.0;

  @override
  void initState() {
    amountController = TextEditingController();
    chargingValueController = TextEditingController();
    super.initState();
  }

  @override
  dispose() {
    amountController.dispose();
    chargingValueController.dispose();
    super.dispose();
  }

  void _calculateChargeValues(String? input) {
    setState(() {
      double amount = double.tryParse(input ?? "0") ?? 0.0;
      vat = amount * 0.14;
      administration = 0.16;
      administrationValue = amount * 0.16;
      totalCharge = amount + vat + administrationValue;

      chargingValueController.text = totalCharge.toStringAsFixed(0);
    });
  }

  void _calculateAmountFromCharge(String? input) {
    setState(() {
      double chargeValue = double.tryParse(input ?? "0") ?? 0.0;

      if (chargeValue > 0) {
        amount = chargeValue / 1.3;
        vat = amount * 0.14;
        administrationValue = amount * 0.16;
      } else {
        amount = 0;
        vat = 0;
        administrationValue = 0;
      }

      amountController.text = amount.toStringAsFixed(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const CustomSectionTitle(title: "Balance Amount"),
              const SizedBox(height: 16),
              AmountInputRowSection(
                amountController: amountController,
                chargingValueController: chargingValueController,
                onAmountChanged: _calculateChargeValues,
                onChargingValueChanged: _calculateAmountFromCharge,
              ),
              const SizedBox(height: 12),
              const CustomSectionTitle(title: "Note"),
              const Text(
                "The minimum amount to run an ad is 200 EGP.",
                style: AppTextStyles.semiBold16,
              ),
              const SizedBox(height: 16),
              const CustomSectionTitle(title: "Payment Details"),
              const SizedBox(height: 8),
              PaymentDetailsSection(
                amount: amountController.text,
                vat: vat,
                administrationValue: administrationValue,
                chargingValue: chargingValueController.text,
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: "Continue",
                onPressed: () {
                  log("Navigating with amount: ${chargingValueController.text}");
                  Navigator.of(context).pushNamed(
                    ChooseTransformMethodView.routeName,
                    arguments:chargingValueController.text,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

