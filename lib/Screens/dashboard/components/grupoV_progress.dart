import 'package:data/model/grupoV_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class GrupoVProgressChart extends StatefulWidget {
  const GrupoVProgressChart({Key? key}) : super(key: key);
  @override
  State<GrupoVProgressChart> createState() => _GrupoVProgressChartState();
}

class _GrupoVProgressChartState extends State<GrupoVProgressChart> {
  final List<GrupoVPercentage> percnt = GrupoVPercentageList;
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
                  height: 12.0,
                ),
                Text(
                  "${percentList.municipios} municipios",
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  "${percentList.descripcion}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  "${percentList.aprendices} aprendices",
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 15.0,
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
