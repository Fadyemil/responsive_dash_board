import 'package:dash_board_responsive/Models/Items_delails_models.dart';
// import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/ItemsDeails.dart';
import 'package:flutter/material.dart';

class IcomeDetailsListView extends StatelessWidget {
  const IcomeDetailsListView({super.key});

  static const List<ItemDetailsModel> items = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40',
      color: Color(0xff208CC8),
    ),
    ItemDetailsModel(
      title: 'Design product',
      value: '25',
      color: Color(0xff4EB7F2),
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      value: '20',
      color: Color(0xffE2DECD),
    ),
    ItemDetailsModel(
      title: 'Other',
      value: '22',
      color: Color(0xff064061),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //~the solution
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemsDeails(itemDetailsModel: e)).toList(),
    );
//     !!!!Calculating the intrinsic dimensions would require instantiating every child of the viewport, which
// !!!defeats the point of viewports being lazy.
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return ItemsDeails(
//           itemDetailsModel: items[index],
//         );
//       },
//     );
  }
}
