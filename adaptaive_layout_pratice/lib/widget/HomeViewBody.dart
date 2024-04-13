import 'package:adaptaive_layout_pratice/widget/AdaptiveLayout.dart';
import 'package:adaptaive_layout_pratice/widget/DesKtop_layout.dart';
import 'package:adaptaive_layout_pratice/widget/MobileLayout.dart';
import 'package:adaptaive_layout_pratice/widget/tabletLayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLaouyt(
        mobileLayout: (context)=> const MobileLayout(),
        tebletLayout: (context)=> const TabletLayout(),
        desktopLayout:(context)=> const DesktopLayout(),
      ),
    );
  }
}
