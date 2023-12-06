import 'package:data/Screens/dashboard/colonias_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'colonias_info_card.dart';

class ColoniasDetails extends StatelessWidget {
  const ColoniasDetails({
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
            "500 Colonias",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          ColoniasChart(),
          ColoniasInfoCard(
            title: "Beneficiarios en 500 colonias (50 municipios de Seguridad)",
            people:  "308,586",
          ),
        ],
      ),
    );
  }
}
