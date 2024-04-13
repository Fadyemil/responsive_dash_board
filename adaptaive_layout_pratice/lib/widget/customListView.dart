import 'package:flutter/material.dart';

class customSliverListView extends StatelessWidget {
  const customSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: CustomItem2(),
        );
      },
      itemCount: 12,
    );
  }
}

class CustomItem2 extends StatelessWidget {
  const CustomItem2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      // margin:EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffECECEC),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
