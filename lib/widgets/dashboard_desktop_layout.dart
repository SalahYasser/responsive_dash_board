import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_transaction_section.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

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
              CustomBackgroundContainer(
                child: MyCardsAndTransactionHistorySection(),
              ),
              SizedBox(height: 24),
              IncomeSection(),
            ],
          ),
        ),
      ],
    );
  }
}
