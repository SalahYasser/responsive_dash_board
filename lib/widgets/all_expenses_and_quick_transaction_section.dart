import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_in_voice.dart';

class AllExpensesAndQuickTransactionSection extends StatelessWidget {
  const AllExpensesAndQuickTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInVoice(),
      ],
    );
  }
}
