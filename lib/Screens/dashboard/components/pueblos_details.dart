import 'package:data/Screens/dashboard/components/pueblos_progress.dart';
import 'package:data/Screens/dashboard/pueblos_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
//import 'pueblos_info_card.dart';

class PueblosDetails extends StatelessWidget {
  const PueblosDetails({
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
            "Plan de justicia de los pueblos\nWIXÁRIKA, O'DAM -AU'DAM, NAÁYERI Y MEXIKAN",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          PueblosChart(),
          PueblosProgressChart(),

        ],
      ),
    );
  }
}
