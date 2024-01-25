import 'package:data/Screens/dashboard/components/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class EdadGChart extends StatelessWidget {
  const EdadGChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Indicator(
                color: secondaryColor,
                text: "Mujeres",
                isSquare: false,
              ),
              Indicator(
                color: greenColor,
                text: "Hombres",
                isSquare: false,
              ),
            ],
          ),
          const SizedBox(height: 20),
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
                  "2,852,508",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text("aprendices"),
                SizedBox(height: defaultPadding),
                Text(
                  "\$110,160,013,332.74",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                  ),
                ),
                Text("pesos"),
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
    value: 58.0,
    title: '58%',
    showTitle: true,
    radius: 43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: greenColor,
    value: 41.9,
    title: '41.9%',
    showTitle: true,
    radius:43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),
];
