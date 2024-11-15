import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.colorIcon});

  final String image;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: Colors.white10,
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(image),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: colorIcon,
        ),
      ],
    );
  }
}
