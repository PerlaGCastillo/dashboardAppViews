import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class historialLineChart extends StatefulWidget {
  historialLineChart({Key? key}) : super(key: key);

  @override
  _historialLineChartState createState() => _historialLineChartState();
}

class _historialLineChartState extends State<historialLineChart> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SfCircularChart(
              title:
              ChartTitle(text: 'Histórico egresados por género \n 01/01/2019 - 31/12/2022'),
              legend:
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                RadialBarSeries<GDPData, String>(
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.people,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                    maximumValue: 1200000)
              ],
            )));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Hombres', 460671),
      GDPData('Mujeres', 707043),
      GDPData('Histórico de egresados', 1167714),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.people, this.gdp);
  final String people;
  final int gdp;
}