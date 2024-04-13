import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/LatestTransctionListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 26),
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 16),
        const LatestTransctionListView()
      ],
    );
  }
}

