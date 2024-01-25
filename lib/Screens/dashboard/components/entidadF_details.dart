import 'package:data/Screens/dashboard/components/entidadF_progress.dart';
import 'package:data/Screens/dashboard/entidadF_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class EntidadFDetails extends StatelessWidget {
  const EntidadFDetails({
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
            "Entidad Federativa",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          EntidadFChart(),
          EntidadFProgressChart(),
        ],
      ),
    );
  }
}
