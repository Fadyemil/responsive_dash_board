import 'package:dash_board_responsive/widgets/custom_button.dart';
import 'package:dash_board_responsive/widgets/title_text_field.dart';
// import 'package:dash_board_responsive/widgets/title_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),

        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                Title: 'Add More details',
                backgroundColor: Colors.white,
                textColor: Color(0xff4DB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(Title: 'Send Moeny'),
            ),
          ],
        )
      ],
    );
  }
}
