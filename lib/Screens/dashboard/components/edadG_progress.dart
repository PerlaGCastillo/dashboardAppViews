import 'package:data/model/edadG_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class EdadGProgressChart extends StatefulWidget {
  const EdadGProgressChart({Key? key}) : super(key: key);
  @override
  State<EdadGProgressChart> createState() => _EdadGProgressChartState();
}

class _EdadGProgressChartState extends State<EdadGProgressChart> {
  final List<EdadGPercentage> percnt = EdadGPercentageList;
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
                  "${percentList.edad} años",
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 19.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.hombres} \n hombres",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.mujeres} \n mujeres",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.aprendices} \n aprendices",
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.monto} \n monto",
                  style: const TextStyle(
                    fontSize: 16.0,
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
