import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          SizedBox(height: 34),
          Text(
            itemModel.title,
            style: Styles.styleSemiBold16,
          ),
          SizedBox(height: 8),
          Text(
            itemModel.date,
            style: Styles.styleRegular14,
          ),
          SizedBox(height: 16),
          Text(
            itemModel.title,
            style: Styles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
