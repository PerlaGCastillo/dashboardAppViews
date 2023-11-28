import 'package:data/Screens/dashboard/imss_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'imsprueba.dart';
import 'imss_info_card.dart';

class ImssDetails extends StatelessWidget {
  const ImssDetails({
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
            "Seguro Médico",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          ImssChart(),
          PieChartSample2(),
          ImssInfoCard(
            title: "Jóvenes incorporados al IMSS",
            people:  "1,151,804",
            date: "01/01/2019 -31/12/2019",
          ),
          ImssInfoCard(
            title: "Jóvenes incorporados al IMSS",
            people: "467,526",
            date: "01/01/2020 -31/12/2020",
          ),
          ImssInfoCard(
            title: "Jóvenes incorporados al IMSS",
            people: "592,013",
            date: "01/01/2021 -31/12/2021",
          ),
          ImssInfoCard(
            title: "Jóvenes incorporados al IMSS",
            people: "254,501",
            date: "01/01/2022 -31/12/2022",
          ),
          ImssInfoCard(
            title: "Jóvenes incorporados al IMSS",
            people: "2,465,844",
            date: "01/01/2019 -31/12/2022",
          ),
        ],
      ),
    );
  }
}
