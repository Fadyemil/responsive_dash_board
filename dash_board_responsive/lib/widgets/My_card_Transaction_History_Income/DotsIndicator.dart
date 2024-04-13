import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/CustomDot_Indicator.dart';
import 'package:flutter/cupertino.dart';

class DotsIndictor extends StatelessWidget {
  const DotsIndictor({super.key, required this.currentPageIndex});

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: EdgeInsets.only(right: 6.0),
                child: CustomDotIndicator(isActive: index == currentPageIndex),
              )),
    );
  }
}
