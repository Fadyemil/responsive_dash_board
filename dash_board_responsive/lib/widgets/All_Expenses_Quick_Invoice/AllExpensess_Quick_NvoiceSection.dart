import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/All_Expenses.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensessAndQuickNvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickNvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}