import 'package:adlly_app/features/add_balance/presentation/views/widgets/payment_details_row.dart';
import 'package:flutter/material.dart';
class PaymentDetailsSection extends StatelessWidget {
  final String amount;
  final double vat;
  final double administrationValue;
  final String chargingValue;

  const PaymentDetailsSection({
    super.key,
    required this.amount,
    required this.vat,
    required this.administrationValue,
    required this.chargingValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentDetailRow(label: "Charging Amount", amount: amount),
        PaymentDetailRow(label: "VAT 14%", amount: vat.toStringAsFixed(0)),
        PaymentDetailRow(label: "Administration", amount: administrationValue.toStringAsFixed(0)),
        PaymentDetailRow(label: "Charging Value", amount: chargingValue),
      ],
    );
  }
}
