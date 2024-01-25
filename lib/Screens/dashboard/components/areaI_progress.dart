import 'package:data/model/areaI_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class AreaIProgressChart extends StatefulWidget {
  const AreaIProgressChart({Key? key}) : super(key: key);
  @override
  State<AreaIProgressChart> createState() => _AreaIProgressChartState();
}

class _AreaIProgressChartState extends State<AreaIProgressChart> {
  final List<AreaIPercentage> percnt = AreaIPercentageList;
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
                  "${percentList.area} \nárea",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.hombres} hombres",
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
                  "${percentList.mujeres} mujeres",
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.aprendices} aprendices",
                  style: const TextStyle(
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
