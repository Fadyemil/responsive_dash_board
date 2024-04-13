import 'package:dash_board_responsive/Models/Drawer_item_models.dart';
import 'package:dash_board_responsive/widgets/Drawer_widgets/active_inActive_item.dart';
import 'package:flutter/material.dart';

class draweritem extends StatelessWidget {
  const draweritem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return ActiveDrawerItem(drawerItemModel: drawerItemModel);
    } else {
      return InActiveDrawerItem(drawerItemModel: drawerItemModel);
    }
  }
}
