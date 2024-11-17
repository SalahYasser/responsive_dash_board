import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= 1200 && width < 1750
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          )
        : SizedBox();
  }
}
