import 'package:data/Screens/dashboard/components/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class acEgresadosChart extends StatelessWidget {
  const acEgresadosChart({
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
                    "1,313,651",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),
                  Text("2019 a 2024")
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
    value: 60.6,
    title: '60.6%',
    showTitle: true,
    radius: 43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),
  PieChartSectionData(
    color: greenColor,
    value: 39.3,
    title: '39.3%',
    showTitle: true,
    radius:43,
    titleStyle: TextStyle(
      fontSize: 13.0,
      color: creamColor,
    ),
  ),

];
