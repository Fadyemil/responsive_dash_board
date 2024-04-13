// ignore_for_file: file_names

import 'package:dash_board_responsive/utils/size_config.dart';
import 'package:dash_board_responsive/widgets/DashBoard_Mobile_Layout.dart';
import 'package:dash_board_responsive/widgets/DashBourd_desktop_Layout.dart';
import 'package:dash_board_responsive/widgets/DashBourd_tablet_Layout.dart';
import 'package:dash_board_responsive/widgets/Drawer_widgets/customDrawer.dart';
import 'package:dash_board_responsive/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> Scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        key: Scaffoldkey,
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? CustomDrawer()
            : null,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                elevation: 0,
                backgroundColor: Color(0xffFAFAFA),
                leading: IconButton(
                  onPressed: () {
                    Scaffoldkey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ))
            : null,
        backgroundColor: const Color(0xFFF7F9FA),
        body: AdaptiveLaouyt(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tebletLayout: (context) => const DashBourdTabletLayout(),
          desktopLayout: (context) => const dashBoradDesktopLayout(),
        ),
      ),
    );
  }
}
