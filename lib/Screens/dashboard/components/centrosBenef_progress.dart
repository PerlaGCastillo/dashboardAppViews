import 'package:data/model/yaqui_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class YaquisProgressChart extends StatefulWidget {
  const YaquisProgressChart({Key? key}) : super(key: key);
  @override
  State<YaquisProgressChart> createState() => _YaquisProgressChartState();
}

class _YaquisProgressChartState extends State<YaquisProgressChart> {
  final List<YaquisPercentage> percnt = YaquisPercentageList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: percnt.length,
        itemBuilder: (context, index) {
          final percentList = percnt[index];
          return Container(
            margin: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              color: snowColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "${percentList.beneficiarios}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.cp} código postal",
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
            //final String?   periodo, beneficiarios
                Text(
                  "${percentList.municipios}",
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.estado}",
                  style: const TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.periodo}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
