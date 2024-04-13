import 'package:dash_board_responsive/Models/TransactionModel.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/Transactio_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        price: '\$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        price: '\$2,000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        price: '\$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    //&the solution
    return Column(
      children: items
          .map(
            (e) => TransactionItem(transactionModel: e),
          )
          .toList(),
    );
    //!!!Calculating the intrinsic dimensions would require instantiating every child of the viewport, which
    // !!!!!!!defeats the point of viewports being lazy.
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(
    //       transactionModel: items[index],
    //     );
    //   },
    // );
  }
}
