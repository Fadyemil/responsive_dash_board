import 'package:dash_board_responsive/widgets/DashBoard_Mobile_Layout.dart';
import 'package:dash_board_responsive/widgets/Drawer_widgets/customDrawer.dart';
import 'package:flutter/material.dart';

class DashBourdTabletLayout extends StatelessWidget {
  const DashBourdTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}

