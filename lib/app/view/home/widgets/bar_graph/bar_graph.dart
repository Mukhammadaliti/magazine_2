import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:magazine_2/app/view/home/widgets/bar_graph/bar_data.dart';

class BarGraph extends StatelessWidget {
  const BarGraph({Key? key, required this.weeklySummary}) : super(key: key);
  final List weeklySummary;
  @override
  Widget build(BuildContext context) {
    BarData myBar = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBar.intionBar();
    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
      barGroups: myBar.barData
          .map(
            (data) => BarChartGroupData(
              x: data.x,
              barRods: [BarChartRodData(toY: data.y)]
            ),
          )
          .toList(),
    ));
  }
}
