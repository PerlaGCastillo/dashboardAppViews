import 'package:data/Screens/dashboard/components/edadG_progress.dart';
import 'package:data/Screens/dashboard/edadG_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class EdadGDetails extends StatelessWidget {
  const EdadGDetails({
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
            "Reporte por Edad",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          EdadGChart(),
          EdadGProgressChart(),
        ],
      ),
    );
  }
}
