import 'package:data/Screens/dashboard/components/tren_progress.dart';
import 'package:data/Screens/dashboard/tren_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class TrenMayaDetails extends StatelessWidget {
  const TrenMayaDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Estrategia especial\nTREN MAYA",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          TrenMayaChart(),
          TrenMayaProgressChart(),
        ],
      ),
    );
  }
}
