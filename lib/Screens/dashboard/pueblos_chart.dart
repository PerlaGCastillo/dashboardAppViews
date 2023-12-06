import 'package:data/Screens/dashboard/components/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PueblosChart extends StatelessWidget {
  const PueblosChart({
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
                Text(
                  "\$704,188,601.81",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
                Text("16,977"),
                Text("personas beneficiarias"),
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
    value: 100,
    showTitle: false,
    radius: 10,
    titleStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: creamColor,
    ),
  ),
];
