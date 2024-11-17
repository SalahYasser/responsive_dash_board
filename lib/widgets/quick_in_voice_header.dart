import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInVoiceHeader extends StatelessWidget {
  const QuickInVoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: Styles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              weight: 1.5,
              color: Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
