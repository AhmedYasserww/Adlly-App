import 'package:adlly_app/core/utils/app_text_styles.dart';
import 'package:adlly_app/features/wallet/presentation/views/widgets/wallet_view_body.dart';
import 'package:flutter/material.dart';
class WalletView extends StatelessWidget {
  const WalletView({super.key});
static const routeName = '/wallet';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text("Your Wallet",style: AppTextStyles.bold19,),
      ),
      body: const WalletViewBody(),
    );
  }
}
