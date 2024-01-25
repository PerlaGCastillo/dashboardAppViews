import 'package:data/Screens/dashboard/components/areaI_progress.dart';
import 'package:data/Screens/dashboard/areaI_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class AreaIDetails extends StatelessWidget {
  const AreaIDetails({
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
            "Área de Interés",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          AreaIChart(),
          AreaIProgressChart(),
        ],
      ),
    );
  }
}
