// ignore_for_file: non_constant_identifier_names

import 'package:adaptaive_layout_pratice/view/homeView.dart';
import 'package:flutter/material.dart';

AppBar BuilAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    leading: IconButton(
      onPressed: () {
        scaffoldKey.currentState!.openDrawer();
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
  );
}
