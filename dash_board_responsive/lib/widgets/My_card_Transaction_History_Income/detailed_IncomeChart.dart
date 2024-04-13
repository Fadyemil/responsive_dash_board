import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetaildeIncomeChart extends StatefulWidget {
  const DetaildeIncomeChart({super.key});

  @override
  State<DetaildeIncomeChart> createState() => _DetaildeIncomeChartState();
}

class _DetaildeIncomeChartState extends State<DetaildeIncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  int activeIndex = -1;

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (FlTouchEvent, PieTouchResponse) {
          activeIndex =
              PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          radius: activeIndex == 0 ? 60 : 50,
          title: activeIndex == 0 ? 'Design service' : "40%",
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.1 : null,
          radius: activeIndex == 1 ? 60 : 50,
          title: activeIndex == 1 ? 'Design product' : "25%",
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          radius: activeIndex == 2 ? 60 : 50,
          title: activeIndex == 2 ? 'Product royalti' : "20%",
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          value: 20,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          radius: activeIndex == 3 ? 60 : 50,
          value: 22,
          title: activeIndex == 3 ? 'Other' : "22%",
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
