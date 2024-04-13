
import 'package:adaptaive_layout_pratice/widget/CustomSilverGrid.dart';
import 'package:adaptaive_layout_pratice/widget/customListView.dart';
import 'package:flutter/cupertino.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        CustomSilverGrid(),
        customSliverListView(),
      ],
    );
  }
}
