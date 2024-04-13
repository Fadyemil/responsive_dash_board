import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/RangeOptions.dart';
import 'package:flutter/material.dart';

class incomeSectionHeader extends StatelessWidget {
  const incomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        RangeOptions(),
      ],
    );
  }
}
