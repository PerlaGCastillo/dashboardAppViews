import 'package:data/Screens/dashboard/pueblos_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'pueblos_info_card.dart';

class PueblosDetails extends StatelessWidget {
  const PueblosDetails({
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
            "PLAN DE JUSTICIA DE LOS PUEBLOS WIXÁRIKA, O'DAM -AU'DAM, NAÁYERI Y MEXIKAN",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          PueblosChart(),
          PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Durango",
              municipios: "Mezquital",
              beneficiarios: "1,217",
              inversion: "\$75,842,765.27",
            ),
          PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Durango",
              municipios: "Pueblo Nuevo",
              beneficiarios: "1,986",
              inversion: "\$81,708,640.08"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Durango",
              municipios: "Súchil",
              beneficiarios: "535",
              inversion: "\$24,940,312.42"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Jalisco",
              municipios: "Bolaños",
              beneficiarios: "62",
              inversion: "\$2,317,000.48"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Jalisco",
              municipios: "Chimaltitán",
              beneficiarios: "7",
              inversion: "\$319,749.30"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Jalisco",
              municipios: "Huejuquilla el Alto",
              beneficiarios: "38",
              inversion: "\$1,132,398.71"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Jalisco",
              municipios: "Mezquitic",
              beneficiarios: "156",
              inversion: "\$6,345,288.65"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Jalisco",
              municipios: "Villa Guerrero",
              beneficiarios: "32",
              inversion: "\$722,464.58"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "Acaponeta",
              beneficiarios: "2,433",
              inversion: "\$92,631,137.37"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "Del Nayar",
              beneficiarios: "591",
              inversion: "\$37,378,052.24"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "Huajicori",
              beneficiarios: "757",
              inversion: "\$32,515,257.99"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "La Yesca",
              beneficiarios: "318",
              inversion: "\$16,628,124.09"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "Rosamorada",
              beneficiarios: "1,415",
              inversion: "\$53,036,898.23"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "Ruíz",
              beneficiarios: "2,315",
              inversion: "\$84,148,212.35"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "Santa María del Oro",
              beneficiarios: "251",
              inversion: "\$8,828,452.31"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Nayarit",
              municipios: "Santiago Ixcuintla",
              beneficiarios: "1,954",
              inversion: "\$67,871,899.84"
            ),
            PueblosInfoCard(
              periodo: "01/01/2019 - 31/12/2022",
              estado: "Zacatecas",
              municipios: "Valparaíso",
              beneficiarios: "2,910",
              inversion: "\$117,821,947.90"
            ),
        ],
      ),
    );
  }
}
