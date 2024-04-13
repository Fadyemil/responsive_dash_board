// // ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
// import 'package:tools/LayoutBuilder.dart';

void main() {
  runApp(
    const CustomScrollViewExpamle(),
  );
}

// class MadiaQueryTest extends StatelessWidget {
//   const MadiaQueryTest({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var hight = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     var padding = MediaQuery.of(context).padding.collapsedSize.height;
//     print("***************${hight.toString()}****************");
//     print("***************${width.toString()}****************");
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               height: hight * 0.22,
//               width: width*0.3,
//               color: Colors.red,
//             ),
//             Container(
//               height: hight * 0.2,
//               width: width*0.3,
//               color: Colors.black,
//             ),
//             Container(
//               height: hight * 0.2,
//               width: width*0.3,
//               color: Colors.yellowAccent,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CustomScrollViewExpamle extends StatelessWidget {
  const CustomScrollViewExpamle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
              expandedTitleScale: 5,
              background: Center(child: Text('backGround')),
              centerTitle: true,
              collapseMode: CollapseMode.pin,
            ),
            leading: Icon(Icons.open_in_browser),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
