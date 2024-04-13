import 'package:dash_board_responsive/Models/All_expensess_item_model.dart';
import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/All_Expensese_item.dart';
// import 'package:dash_board_responsive/widgets/All_Expensese_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'Apri-2042',
        price: "\$19.92"),
    AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'March 2024',
      price: '\$14.52',
    ),
    AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'March 2021',
      price: '\$15.82',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      // ^ children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList());

      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;

          return Expanded(
            child: InkWell(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 4 : 0),
                child: AllExpensesItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );

    /*// !return SizedBox(
    //   !height: 500,
    //  ! child: ListView.builder(
    //  !   scrollDirection: Axis.horizontal,
    // !    itemCount: items.length,
    // !    itemBuilder: (context, index) {
    //  !     return AllExpensesItem(
    //  !       itemModel: items[index],
    // !      );
    // !    },
    // !  ),
    !);
    */
  }

  void updateIndex(int index) {
    setState(() {
      if (selectedIndex != index) {
        selectedIndex = index;
        print(index);
      }
    });
  }
}
