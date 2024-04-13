// ignore: file_names
import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/RangeOptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllExpensesHeadr extends StatelessWidget {
  const AllExpensesHeadr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions()
      ],
    );
  }
}

