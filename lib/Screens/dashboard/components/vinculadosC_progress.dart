import 'package:data/model/vinculadosC_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class VinculadosCProgressChart extends StatefulWidget {
  const VinculadosCProgressChart({Key? key}) : super(key: key);
  @override
  State<VinculadosCProgressChart> createState() => _VinculadosCProgressChartState();
}

class _VinculadosCProgressChartState extends State<VinculadosCProgressChart> {
  final List<VinculadosCPercentage> prcntt = VinculadosCPercentageList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: prcntt.length,
        itemBuilder: (context, index) {
          final percentList = prcntt[index];
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
                  "${percentList.centros}",
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 19.0,
                  ),
                ),
                Text("centros"),
                const SizedBox(
                  height: 8,
                ),
            //final String?   periodo, beneficiarios
                Text(
                  "${percentList.vinculados}",
                  style: const TextStyle(
                    fontSize: 19.0,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text("vinculados"),
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
              ],
            ),
          );
        },
      ),
    );
  }
}
