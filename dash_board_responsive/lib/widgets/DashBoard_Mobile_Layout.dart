import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/AllExpensess_Quick_NvoiceSection.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/My_card_Transaction_History.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/income_section.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickNvoiceSection(),
          SizedBox(height: 24),
          My_card_Transaction_HistorySection(),
          SizedBox(height: 24),
          incomeSection(),
        ],
      ),
    );
  }
}
