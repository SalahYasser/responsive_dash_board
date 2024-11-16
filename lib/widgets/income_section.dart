import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_header.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          CustomHeader(text: 'Income'),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: IncomeChart(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}