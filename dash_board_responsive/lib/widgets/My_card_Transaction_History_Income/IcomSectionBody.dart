import 'package:dash_board_responsive/utils/size_config.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/IcomeDetails.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/detailed_IncomeChart.dart';
import 'package:dash_board_responsive/widgets/My_card_Transaction_History_Income/incomeChart.dart';
import 'package:flutter/material.dart';

class IcomSectionBody extends StatelessWidget {
  const IcomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop 
        ? Expanded(
            child: DetaildeIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: incomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IcomeDetailsListView(),
              ),
            ],
          );
    // return width >= 1750
    //     ? Row(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Expanded(
    //             child: incomeChart(),
    //           ),
    //           Expanded(
    //             flex: 2,
    //             child: IcomeDetailsListView(),
    //           ),
    //         ],
    //       )
    //     : SizedBox();
  }
}
