import 'package:data/Screens/dashboard/components/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MunicipiosChart extends StatelessWidget {
  const MunicipiosChart({
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
                  text: "2019",
                  isSquare: false,
              ),
              Indicator(
                  color: greenColor,
                  text: "2020",
                  isSquare: false,
              ),
              Indicator(
                  color: bgColor,
                  text: "2021",
                  isSquare: false,
              ),
              Indicator(
                  color: drColor,
                  text: "2022",
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
                /*Text(
                  "267,417",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                Text("Dispersadas")*/
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
    value: 20,
    title: '2,437',
    showTitle: true,
    radius: 43,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: greenColor,
    value: 20,
    title: '2,454',
    showTitle: true,
    radius:43,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: bgColor,
    value: 20,
    title: '2,448',
    showTitle: true,
    radius:43,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: drColor,
    value: 20,
    title: '2,375',
    showTitle: true,
    radius:43,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
];
