// ignore_for_file: camel_case_types

import 'package:dash_board_responsive/widgets/All_Expenses_Quick_Invoice/AllExpensess_Quick_NvoiceSection.dart';
import 'package:dash_board_responsive/widgets/Drawer_widgets/customDrawer.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/My_card_Transaction_History.dart';
// import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/My_card_Transaction_History.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/income_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class dashBoradDesktopLayout extends StatelessWidget {
  const dashBoradDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: AllExpensessAndQuickNvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              SizedBox(height: 40),
                              My_card_Transaction_HistorySection(),
                              SizedBox(height: 24),
                              Expanded(
                                child: incomeSection(),
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
