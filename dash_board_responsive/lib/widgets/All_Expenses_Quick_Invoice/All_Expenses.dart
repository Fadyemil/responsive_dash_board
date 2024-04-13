// ignore_for_file: unnecessary_import, file_names

import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/All_Expenses_Headr.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/All_Expenses_Item_List_View.dart';
import 'package:dash_board_responsive/widgets/Custom_BackGround_Container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeadr(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}

