import 'package:data/Screens/dashboard/acEgresados_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'acEgresados_info_card.dart';

class AcEgresadosDetails extends StatelessWidget {
  const AcEgresadosDetails({
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
            "Total de Egresados Acumulados",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          acEgresadosChart(),
          SizedBox(height: defaultPadding),
          acEgresadosInfoCard(
            description: "Hombres",
            people: "516,750",
            amount: "27,427,570,550.34",
          ),
          acEgresadosInfoCard(
            description: "Mujeres",
            people: "796,901",
            amount: "42,329,245,884.69",
          ),
          acEgresadosInfoCard(
            description: "Total",
            people: "1,313,651",
            amount: "69,756,816,435.03",
          ),
        ],
      ),
    );
  }
}
