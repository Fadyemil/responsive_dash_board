import 'package:dash_board_responsive/Models/All_expensess_item_model.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/InActive_And_Active_All_Expensess_Item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});

  final AllExpensessItemModel itemModel;

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return ActiveAllExpensessItem(itemModel: itemModel);
    } else {
      return InActiveAllExpensessItem(itemModel: itemModel);
    }
  }
}
