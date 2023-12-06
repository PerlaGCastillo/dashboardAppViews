import 'package:data/Screens/dashboard/components/yaqui_progress.dart';
import 'package:data/Screens/dashboard/yaqui_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class YaquisDetails extends StatelessWidget {
  const YaquisDetails({
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
            "Estrategia especial\nPLAN DE JUSTICIA DEL PUEBLO YAQUI",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          YaquisChart(),
          YaquisProgressChart(),
        ],
      ),
    );
  }
}
