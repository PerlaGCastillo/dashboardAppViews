import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ImssChart extends StatelessWidget {
  const ImssChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  "2,465,844",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                Text("2019 a 2022")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionDatas = [
  PieChartSectionData(
    color: secondaryColor,
    value: 46.7,
    title: '46.7%',
    showTitle: true,
    radius: 42,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: bgColor,
    value: 18.9,
    title: '18.9%',
    showTitle: true,
    radius:42,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: redColor,
    value: 24,
    title: '24%',
    showTitle: true,
    radius: 42,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: otroColor,
    value: 10.3,
    title: '10.3%',
    showTitle: true,
    radius: 42,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),

];
