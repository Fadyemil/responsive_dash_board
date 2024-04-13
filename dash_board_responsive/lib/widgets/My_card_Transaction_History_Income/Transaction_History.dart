// import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/Transaction_History_Header.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/Transaction_History_ListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context),
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
