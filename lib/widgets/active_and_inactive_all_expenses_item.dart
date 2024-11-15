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
        width: MediaQuery.sizeOf(context).width * 0.2,
        height: MediaQuery.sizeOf(context).height * 0.320,
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
              style: Styles.styleSemiBold16,
            ),
            const SizedBox(height: 8),
            Text(
              itemModel.date,
              style: Styles.styleRegular14,
            ),
            const SizedBox(height: 16),
            Text(
              itemModel.price,
              style: Styles.styleSemiBold24,
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
        width: MediaQuery.sizeOf(context).width * 0.2,
        height: MediaQuery.sizeOf(context).height * 0.320,
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
              colorIcon: Colors.black,
            ),
            const SizedBox(height: 34),
            Text(
              itemModel.title,
              style: Styles.styleSemiBold16.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              itemModel.date,
              style: Styles.styleRegular14.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              itemModel.price,
              style: Styles.styleSemiBold24.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}