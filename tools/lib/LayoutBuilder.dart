// ignore_for_file: unused_local_variable, prefer_const_constructors

// import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constrains) {
            print(constrains.maxWidth.toString());
            if (constrains.maxWidth <= 500) {
              return MobileLayOut();
            } else {
              return DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  number = index + 1;
                  setState(() {});
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 16),
                  color: Colors.green,
                  child: ListTile(
                    title: Text('${index + 1}'),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Center(
              child: Text(
                number.toString(),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class MobileLayOut extends StatelessWidget {
  const MobileLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DetailsPage(number: index);
                },
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 16),
            color: Colors.green,
            child: ListTile(
              title: Text('${index + 1}'),
            ),
          ),
        );
      },
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('${number + 1}'),
      ),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 150,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 150,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Flexible(
              child: FittedBox(
                child: Icon(
                  Icons.ac_unit_outlined,
                  size: 300,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 150,
                width: 75,
                color: Colors.red,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Icon(Icons.abc_outlined),
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.black,
            ),
            Container(
              height: 150,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class AspectRationExample extends StatelessWidget {
  const AspectRationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            color: Colors.red,
            width: double.infinity,
            height: 180,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 16 / 9, // ^ width/heigth
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
          )),
    );
  }
}

class IntrinsicExample extends StatelessWidget {
  const IntrinsicExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // height: 100,
                        // width: 100,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            // width: 100,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Expanded(
                            child: Container(
                              height: 150,
                              // width: 100,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
