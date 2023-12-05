import 'package:data/Screens/dashboard/babien_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'babien_info_card.dart';

class BabienDetails extends StatelessWidget {
  const BabienDetails({
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
            "Bancarización Babien",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          BabienChart(),
          BabienInfoCard(
            concept: "Total de operativos de entrega de tarjetas",
            //\n
            detail: "",
            total:  "3",
          ),
          BabienInfoCard(
            concept: "Total de tarjetas entregadas en operativos",
            detail: "Tarjetas solicitadas",
            total:  "323,011",
          ),
          BabienInfoCard(
            concept: "Tarjetas dispersadas",
            detail: "Tarjetas Pagadas",
            total:  "267,417",
          ),

        ],
      ),
    );
  }
}
