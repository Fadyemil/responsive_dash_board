import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/DotsIndicator.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/MyCardPageView.dart';
import 'package:flutter/material.dart';

class MyCardeSction extends StatefulWidget {
  const MyCardeSction({super.key});

  @override
  State<MyCardeSction> createState() => _MyCardeSctionState();
}

class _MyCardeSctionState extends State<MyCardeSction> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(height: 20),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 20),
        DotsIndictor(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
