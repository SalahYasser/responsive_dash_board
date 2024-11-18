import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
            const SizedBox(height: 34),
            Text(
              itemModel.title,
              style: Styles.styleSemiBold16(context),
            ),
            const SizedBox(height: 8),
            Text(
              itemModel.date,
              style: Styles.styleRegular14(context),
            ),
            const SizedBox(height: 16),
            Text(
              itemModel.price,
              style: Styles.styleSemiBold24(context),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
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
              imageColor: Colors.white,
              colorIcon: Colors.white,
            ),
            const SizedBox(height: 34),
            Text(
              itemModel.title,
              style: Styles.styleSemiBold16(context).copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              itemModel.date,
              style: Styles.styleRegular14(context).copyWith(color: Color(0xffFAFAFA)),
            ),
            const SizedBox(height: 16),
            Text(
              itemModel.price,
              style: Styles.styleSemiBold24(context).copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}