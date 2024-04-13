// import 'package:adaptaive_layout_pratice/widget/CustomSilverGrid.dart';
import 'package:adaptaive_layout_pratice/widget/customListView.dart';
import 'package:adaptaive_layout_pratice/widget/custom_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        SliverToBoxAdapter(
          child: CustomList(),
        ),
        customSliverListView(),
      ],
    );
  }
}
