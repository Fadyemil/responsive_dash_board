import 'package:adaptaive_layout_pratice/view/homeView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdpativeApp());
}

class AdpativeApp extends StatelessWidget {
  const AdpativeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViewPage(),
    );
  }
}
