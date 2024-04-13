import 'package:adaptaive_layout_pratice/widget/CustomDrawer.dart';
import 'package:adaptaive_layout_pratice/widget/custom_list.dart';
import 'package:adaptaive_layout_pratice/widget/customListView.dart';
import 'package:adaptaive_layout_pratice/widget/tabletLayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TabletLayout(),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(top: 16),
            child: CustomDesktopWidget(),
          ),
        )
      ],
    );
  }
}

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: CustomItem1(),
        ),
        SizedBox(height: 15),
        Expanded(
          child: CustomItem2(),
        ),
      ],
    );
  }
}
