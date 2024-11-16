import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListTile(
          title: Text(
            transactionModel.title,
            style: Styles.styleSemiBold16,
          ),
          subtitle: Text(
            transactionModel.date,
            style: Styles.styleRegular16.copyWith(
              color: Color(0xffAAAAAA),
            ),
          ),
          trailing: Text(
            transactionModel.amount,
            style: Styles.styleSemiBold20.copyWith(
              color: transactionModel.isWithdrawal
                  ? Color(0xffF3735E)
                  : Color(0xff7DD97B),
            ),
          ),
        ),
      ),
    );
  }
}


