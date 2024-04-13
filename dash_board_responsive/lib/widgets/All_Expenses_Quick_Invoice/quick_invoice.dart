import 'package:dash_board_responsive/widgets/Custom_BackGround_Container.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/LatestTransction.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/Quick_Invoice_Form.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/Quick_Invoice_Header.dart';
// import 'package:dash_board_responsive/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

