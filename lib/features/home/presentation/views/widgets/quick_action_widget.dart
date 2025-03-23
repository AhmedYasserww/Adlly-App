import 'package:adlly_app/features/add_balance/presentation/views/add_balance_view.dart';
import 'package:adlly_app/features/home/presentation/views/widgets/quick_action_item.dart';
import 'package:flutter/material.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        //color: const Color(0xFFFAFAFA),
        color: const Color(0xFFEEF8ED),
        borderRadius: BorderRadius.circular(12),
      ),
      child:  Column(
        children:  [
          QuickActionItem(
            icon: Icons.account_balance_wallet,
            title: "Recharge your wallet",
            onTap: (){
              Navigator.pushNamed(context,AddBalanceView.routeName);
            },
          ),
          const SizedBox(height: 10),
          const Divider(),
          QuickActionItem(
            icon: Icons.add_circle_outline,
            title: "Create first ad",
            onTap: (){
            },
          ),
        ],
      ),
    );
  }
}
