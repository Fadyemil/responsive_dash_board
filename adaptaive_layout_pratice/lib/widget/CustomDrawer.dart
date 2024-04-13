import 'package:adaptaive_layout_pratice/models/drawer_item_model.dart';
import 'package:adaptaive_layout_pratice/widget/CustomDrawerItemsListView.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'D A S H B O A R D', icon: Icons.home),
    DrawerItemModel(title: 'S E T T I N G S', icon: Icons.settings),
    DrawerItemModel(title: 'A B O U T', icon: Icons.info),
    DrawerItemModel(title: 'L O G O U T', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 56,
            ),
          ),
          SizedBox(height: 16),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
