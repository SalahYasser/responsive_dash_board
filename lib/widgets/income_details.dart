import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
      title: 'Design service',
      color: Color(0xff208CC8),
      value: '40%',
    ),
    ItemDetailsModel(
      title: 'Design product',
      color: Color(0xff4EB7F2),
      value: '25%',
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      color: Color(0xff064061),
      value: '20%',
    ),
    ItemDetailsModel(
      title: 'Other',
      color: Color(0xffE2DECD),
      value: '15%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
