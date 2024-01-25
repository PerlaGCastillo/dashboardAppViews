import 'package:data/model/entidadF_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class EntidadFProgressChart extends StatefulWidget {
  const EntidadFProgressChart({Key? key}) : super(key: key);
  @override
  State<EntidadFProgressChart> createState() => _EntidadFProgressChartState();
}

class _EntidadFProgressChartState extends State<EntidadFProgressChart> {
  final List<EntidadFPercentage> percnt = EntidadFPercentageList;
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
                  "${percentList.hombres}",
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 19.0,
                  ),
                ),
                Text("hombres"),
                const SizedBox(
                  height: 8,
                ),
            //final String?   periodo, beneficiarios
                Text(
                  "${percentList.mujeres}",
                  style: const TextStyle(
                    fontSize: 19.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text("mujeres"),
                Text(
                  "${percentList.aprendices}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                Text("aprendices"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.monto}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                Text("monto"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.entidad}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                Text("entidad"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${percentList.clave}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                Text("clave"),
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
