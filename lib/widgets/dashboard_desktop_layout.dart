import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_transaction_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history_header.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickTransactionSection(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: MyCardsSection(),
              ),
              Expanded(
                child: TransactionHistory(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: Styles.styleMedium16.copyWith(
            color: Color(0xffAAAAAA),
          ),
        ),

      ],
    );
  }
}
