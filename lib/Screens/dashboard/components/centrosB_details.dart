import 'package:data/Screens/dashboard/components/centrosB_progress.dart';
import 'package:data/Screens/dashboard/centrosB_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class CentrosBDetails extends StatelessWidget {
  const CentrosBDetails({
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
            "Centros con Beneficiarios",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          CentrosBChart(),
          CentrosBProgressChart(),
        ],
      ),
    );
  }
}
