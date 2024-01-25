import 'package:data/model/sectorP_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class SectorPProgressChart extends StatefulWidget {
  const SectorPProgressChart({Key? key}) : super(key: key);
  @override
  State<SectorPProgressChart> createState() => _SectorPProgressChartState();
}

class _SectorPProgressChartState extends State<SectorPProgressChart> {
  final List<SectorPPercentage> percnt = SectorPPercentageList;
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
                  "${percentList.sector}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.tipo} ",
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
                  "${percentList.hombres} hombres",
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.mujeres} mujeres",
                  style: const TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.aprendices} aprendices",
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
