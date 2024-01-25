import 'package:data/Screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:data/table/acumulado.dart';
import 'package:data/table/generoanio.dart';
import 'package:data/table/escolaridad.dart';
import 'package:data/table/colonias.dart';
import 'package:data/table/indigena.dart';
import 'package:data/table/istmo.dart';
import 'package:data/table/marginal.dart';
import 'package:data/table/trenmaya.dart';
import 'package:data/table/violencia.dart';
import 'package:data/table/wixarikas.dart';
import 'package:data/table/yaquis.dart';
import 'package:data/table/gpovulnerable.dart';
import 'package:data/table/areainteres.dart';
import 'package:data/table/babien.dart';
import 'package:data/table/benefHistorico.dart';
import 'package:data/table/centros.dart';
import 'package:data/table/egresados.dart';
import 'package:data/table/generoedad.dart';
import 'package:data/table/imss.dart';
import 'package:data/table/informes.dart';
import 'package:data/table/municipioBenef.dart';
import 'package:data/table/nuevosBenef.dart';
import 'package:data/table/totalBenef.dart';
import 'package:data/table/zonas.dart';


class dataView extends StatelessWidget {
  const dataView({super.key});

  @override
  Widget build(BuildContext context) {
    return displayData();
  }
}

class displayData extends StatefulWidget {
  const displayData({super.key});

  @override
  State<displayData> createState() => _displayDataState();
}

class _displayDataState extends State<displayData> {
  final List<Widget> widgets = [ BenefHistorico(), Acumulado(), NuevosBenef(),TotalBenef(), PorMunicipioBenef(), Zona(), Seguro(), PorEscolaridad(), Centros(), PorAreaInteres(), PorGeneroAnio(),
  PorGeneroEdad(), Egresados(), Babien(), Informe(), Colonias(), Istmo(), Wixarikas(), Yaquis(), Maya(), Marginal(), Violencia(), Indigena(), PorGpoVulnera()];
  final List<String> _itemsBtn = [
    "Beneficiarios histórico",
    "Acumulado",
    "Nuevos beneficiarios",
    "Total de beneficiarios",
    "Total de municipios con beneficiarios",
    "Zona urbana y rural",
    "Seguro médico",
    "Escolaridad",
    "Centros de trabajo",
    "Área de interés",
    "Por género, por año",
    "Por género, por edad",
    "Histórico egresados por género",
    "Bancarización BABIEN",
    "Informe",

    '500 Colonias',
    "Istmo Tehuantepec",
    "Pueblos Wixárika",
    "Pueblo Yaqui",
    "Tren Maya",
    "Marginación",
    "Índices de violencia",
    "Municipios Indígenas",
    "Discapacidad"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              background_containr(context),
              Positioned(
                top: 90,
                child: main_containr(),
              ),
            ]
        ),
      ),
    );
  }

  Container main_containr() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        color: snowColor,
      ),
      height: MediaQuery.of(context).size.height - 152,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: GridView.builder(
              gridDelegate: const
              SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180.0,
                  childAspectRatio: 4/1,
                  crossAxisSpacing: 17.0,
                  mainAxisSpacing: 17.0),
              itemCount: widgets.length,
              itemBuilder: (BuildContext ctx, index){
                final widget = widgets[index];
                final item = _itemsBtn[index];

                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 100),
                    backgroundColor: Color(0xFFBC955C),
                  ),
                  child: Text('${item}',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => widget),);
                  },
                );
              }
          ),),
        ],
      ),
    );
  }
}

Column background_containr(BuildContext context) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: 240,
        decoration: BoxDecoration(
          color: Color(0xff6f1228),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'JCF Consulta histórica',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}
