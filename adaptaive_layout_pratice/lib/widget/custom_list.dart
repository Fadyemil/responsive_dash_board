import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: CustomItem1(),
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}

class CustomItem1 extends StatelessWidget {
  const CustomItem1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Color(0xffB4B4B4),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
