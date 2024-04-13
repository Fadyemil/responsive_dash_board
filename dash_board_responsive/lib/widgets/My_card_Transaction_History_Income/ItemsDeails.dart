import 'package:dash_board_responsive/Models/Items_delails_models.dart';
import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ItemsDeails extends StatelessWidget {
  const ItemsDeails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                color: itemDetailsModel.color,
                shape: const OvalBorder(),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              itemDetailsModel.title,
              style: AppStyles.styleRegular16(context),
            ),
             const SizedBox(width: 24),
            Text(
              '${itemDetailsModel.value}%',
              style: AppStyles.styleBold16(context),
            ),
          ],
        ),
      ),
    );
    // return ListTile(
    //   leading: Container(
    //     width: 12,
    //     height: 12,
    //     decoration: ShapeDecoration(
    //       color: itemDetailsModel.color,
    //       shape: OvalBorder(),
    //     ),
    //   ),
    //   title: Text(
    //     itemDetailsModel.title,
    //     style: AppStyles.styleRegular16(context),
    //   ),
    //   trailing: Text(
    //     '${itemDetailsModel.value}%',
    //     style: AppStyles.styleBold16(context),
    //   ),
    // );
  }
}
