import 'package:data/Screens/dashboard/generoE_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'generoE_info_card.dart';

class GeneroEDetails extends StatelessWidget {
  const GeneroEDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: creamColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Reporte por Género",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          generoEChart(),
          SizedBox(height: defaultPadding),
          GeneroEInfoCard(
            description: "Hombres",
            people:  "1,197,077",
            amount: "44,668,749,041.69",
          ),
          GeneroEInfoCard(
            description: "Mujeres",
            people: "1,655,427",
            amount: "65,491,264,291.05",
          ),
          GeneroEInfoCard(
            description: "Total",
            people: "2,852,504",
            amount: "110,160,013,332.74",
          ),
        ],
      ),
    );
  }
}
