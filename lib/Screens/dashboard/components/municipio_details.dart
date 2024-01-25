import 'package:data/Screens/dashboard/municipios_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'municipio_info_card.dart';

class MunicipioDetails extends StatelessWidget {
  const MunicipioDetails({
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
            "Municipios con Personas Beneficiarias",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          MunicipiosChart(),
          MunicipioInfoCard(
            concept: "Municipios con beneficiarios",
            //\n
            detail: "01/01/2019 - 31/12/2019",
            total:  "2,437",
          ),
          MunicipioInfoCard(
            concept: "Municipios con beneficiarios",
            detail: "01/01/2020 - 31/12/2020",
            total:  "2,454",
          ),
          MunicipioInfoCard(
            concept: "Municipios con beneficiarios",
            detail: "01/01/2021 - 31/12/2021",
            total:  "2,448",
          ),
          MunicipioInfoCard(
            concept: "Municipios con beneficiarios",
            detail: "01/01/2022 - 31/12/2022",
            total:  "2,375",
          ),
        ],
      ),
    );
  }
}
