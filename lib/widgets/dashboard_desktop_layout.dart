import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_transaction_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';

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
                child: TransactionHistoryHeader(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.styleSemiBold20,
        ),
        Text(
          'See all',
          style: Styles.styleMedium16.copyWith(
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
