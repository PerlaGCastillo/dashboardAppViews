import 'package:data/Screens/dashboard/components/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ImssChart extends StatelessWidget {
  const ImssChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height/2.6,
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
                    color: redColor,
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
                  Text(
                    "2,465,844",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),
                  Text("2019 a 2022")
                ],
              ),
            ),
          ],
        ),
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
    radius: 43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: greenColor,
    value: 18.9,
    title: '18.9%',
    showTitle: true,
    radius:43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: redColor,
    value: 24,
    title: '24%',
    showTitle: true,
    radius: 43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: drColor,
    value: 10.3,
    title: '10.3%',
    showTitle: true,
    radius: 43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),

];
