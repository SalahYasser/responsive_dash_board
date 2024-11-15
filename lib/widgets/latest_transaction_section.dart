import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.styleMedium16,
        ),
        SizedBox(height: 12),
        LatestTransactionListView(),
        Divider(height: 48),
        TitleTextField(
          text: 'Customer name',
          hint: 'Type customer name',
        ),
      ],
    );
  }
}

