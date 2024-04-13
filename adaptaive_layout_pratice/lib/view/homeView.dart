// ignore_for_file: prefer_const_constructors

import 'package:adaptaive_layout_pratice/widget/CustomDrawer.dart';
import 'package:adaptaive_layout_pratice/widget/HomeViewBody.dart';
import 'package:adaptaive_layout_pratice/widget/appBar.dart';
import 'package:flutter/material.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: CustomDrawer(),
        appBar: MediaQuery.sizeOf(context).width -32 < 900 ? BuilAppBar() : null,
        backgroundColor: Color(0xffDBDBDB),
        body: HomeViewBody(),
      ),
    );
  }
}
