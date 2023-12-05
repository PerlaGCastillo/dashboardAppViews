import 'package:data/Screens/dashboard/info_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'info_info_card.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({
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
            "Informe",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
         //InfoChart(),
         InfoInfoCard(
            concept: "Informe acumulado de pago de apoyo económico",
            detail: "01/01/2019 - 31/12/2022",
            total:  "",
          ),
          InfoInfoCard(
            concept: "Informes acumulado de pago IMSS",
            detail: "01/01/2019 - 31/12/2022",
            total:  "\$1,450,579,952.37 ¿?",
            //TODO revisar dato correcto
          ),
         InfoInfoCard(
            concept: "Informe acumulado de Atención al Público a través de Call Center",
            detail: "01/01/2019 - 31/12/2022",
            total:  "",
          ),
         InfoInfoCard(
            concept: "Informe de pago de apoyo económico",
            detail: "01/01/2019 - 31/12/2019",
            total:  "",
          ),
          InfoInfoCard(
            concept: "Informes de pago  IMSS",
            detail: "01/01/2019 - 31/12/2019",
            total:  "\$356,497,895.78",
          ),

          InfoInfoCard(
            concept: "Informe de Atención al Público a través de Call Center",
            detail: "01/01/2019 - 31/12/2019",
            total:  "",
          ),
         InfoInfoCard(
            concept: "Informe de pago de apoyo económico",
            detail: "01/01/2020 - 31/12/2020",
            total:  "",
          ),
          InfoInfoCard(
            concept: "Informes de pago  IMSS",
            detail: "01/01/2020 - 31/12/2020",
            total:  "\$793,753,491.66",
          ),
          InfoInfoCard(
            concept: "Informe de Atención al Público a través de Call Center",
            detail: "01/01/2020 - 31/12/2020",
            total:  "",
          ),
         InfoInfoCard(
            concept: "Informe de pago de apoyo económico",
            detail: "01/01/2021 - 31/12/2021",
            total:  "",
          ),
          InfoInfoCard(
            concept: "Informes de pago  IMSS",
            detail: "01/01/2021 - 31/12/2021",
            total:  "\$1,086,531,444.29",
          ),
          InfoInfoCard(
            concept: "Informe de Atención al Público a través de Call Center",
            detail: "01/01/2021 - 31/12/2021",
            total:  "",
          ),
         InfoInfoCard(
            concept: "Informe de pago de apoyo económico",
            detail: "01/01/2022 - 31/12/2022",
            total:  "",
          ),
          InfoInfoCard(
            concept: "Informes de pago  IMSS",
            detail: "01/01/2022 - 31/12/2022",
            total:  "\$1,450,579,952.37 ¿?",
            //TODO revisar dato correcto
          ),
          InfoInfoCard(
            concept: "Informe de Atención al Público a través de Call Center",
            detail: "01/01/2022 - 31/12/2022",
            total:  "",
          ),

        ],
      ),
    );
  }
}
