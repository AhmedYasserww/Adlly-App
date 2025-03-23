import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field_widget.dart';

class AmountInputRowSection extends StatelessWidget {
  final TextEditingController amountController;
  final TextEditingController chargingValueController;
  final void Function(String?)?onAmountChanged;
  final void Function(String?)? onChargingValueChanged;

  const AmountInputRowSection({
    super.key,
    required this.amountController,
    required this.chargingValueController,
    required this.onAmountChanged,
    required this.onChargingValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            keyboardType: TextInputType.number,
            hintText: "Amount",
            controller: amountController,
            onChange: onAmountChanged,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Icon(Icons.swap_horiz, size: 24, color: Colors.grey),
        ),
        Expanded(
          child: CustomTextField(
            keyboardType: TextInputType.number,
            hintText: "Charging Value",
            controller: chargingValueController,
            onChange: onChargingValueChanged,
          ),
        ),
      ],
    );
  }
}
