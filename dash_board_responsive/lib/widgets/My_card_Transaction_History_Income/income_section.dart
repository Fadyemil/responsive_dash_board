import 'package:dash_board_responsive/widgets/Custom_BackGround_Container.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/IcomSectionBody.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/incomeSection_Header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class incomeSection extends StatelessWidget {
  const incomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [incomeSectionHeader(), IcomSectionBody()],
      ),
    );
  }
}
