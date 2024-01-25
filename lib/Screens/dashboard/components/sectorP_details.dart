import 'package:data/Screens/dashboard/components/sectorP_progress.dart';
import 'package:data/Screens/dashboard/sectorP_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class SectorPDetails extends StatelessWidget {
  const SectorPDetails({
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
            "Sector",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          SectorPChart(),
          SectorPProgressChart(),
        ],
      ),
    );
  }
}
