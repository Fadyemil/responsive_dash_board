import 'package:dash_board_responsive/widgets/Custom_BackGround_Container.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/My_Card_Sesction.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/Transaction_History.dart';
import 'package:flutter/material.dart';

class My_card_Transaction_HistorySection extends StatelessWidget {
  const My_card_Transaction_HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [
        MyCardeSction(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistory(),
      ],
    ));
  }
}
