import 'package:adlly_app/features/wallet/presentation/views/widgets/balance_card.dart';
import 'package:adlly_app/features/wallet/presentation/views/widgets/details_card.dart';
import 'package:flutter/material.dart';
import 'package:adlly_app/core/widgets/custom_button.dart';

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const BalanceCard(),
          const SizedBox(height: 16),
          CustomButton(
            text: "Add Balance",
            onPressed: () {},
          ),
          const SizedBox(height: 24),
          const DetailsCard(),
        ],
      ),
    );
  }
}


