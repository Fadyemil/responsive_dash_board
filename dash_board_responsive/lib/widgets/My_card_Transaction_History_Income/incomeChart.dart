import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class incomeChart extends StatefulWidget {
  const incomeChart({super.key});

  @override
  State<incomeChart> createState() => _incomeChartState();
}

class _incomeChartState extends State<incomeChart> {
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
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50,
            value: 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50,
            value: 25,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            radius: activeIndex == 2 ? 60 : 50,
            showTitle: false,
            value: 20,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50,
            value: 22,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
