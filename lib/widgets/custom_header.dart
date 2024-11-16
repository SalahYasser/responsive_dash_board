import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Styles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}



