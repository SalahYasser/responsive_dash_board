import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dash_board/widgets/quick_in_voice_form.dart';

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
        const SizedBox(height: 12),
        const LatestTransactionListView(),
        const Divider(height: 48),
        const QuickInVoiceForm(),
      ],
    );
  }
}


