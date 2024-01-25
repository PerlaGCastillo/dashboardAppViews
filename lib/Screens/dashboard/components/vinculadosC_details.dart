import 'package:data/Screens/dashboard/components/vinculadosC_progress.dart';
import 'package:data/Screens/dashboard/vinculadosC_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class VinculadosCDetails extends StatelessWidget {
  const VinculadosCDetails({
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
            "Vinculados en Capacitación",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          VinculadosCChart(),
          VinculadosCProgressChart(),
        ],
      ),
    );
  }
}
