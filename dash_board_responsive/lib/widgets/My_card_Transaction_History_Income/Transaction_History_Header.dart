import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        // Spacer(),
        Text(
          'See All',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
