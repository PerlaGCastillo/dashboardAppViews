
import 'package:data/Screens/strategy.dart';
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
import 'package:flutter/material.dart';
import 'package:data/table/acumulado.dart';
import 'package:data/table/generoanio.dart';
import 'package:data/table/escolaridad.dart';

class tableGen extends StatelessWidget {
  const tableGen({super.key});

  @override
  Widget build(BuildContext context) {
    return btnGen();
  }
}

class btnGen extends StatefulWidget {
  const btnGen({super.key});

  @override
  State<btnGen> createState() => _btnGenState();
}

class _btnGenState extends State<btnGen> {
  final List<Widget> widgets = [ BenefHistorico(), Acumulado(), NuevosBenef(),TotalBenef(), PorMunicipioBenef(), Zona(), Seguro(), PorEscolaridad(), Centros(), PorAreaInteres(), PorGeneroAnio(),
    PorGeneroEdad(), Egresados(), Babien(), Informe()];
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
    "Informe"
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        color: Color(0xfff4f4f4),
      ),
      height: MediaQuery.of(context).size.height - 180,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: ListView.builder(
            itemCount:widgets.length,
            itemBuilder: (BuildContext ctx, index) {
              final widget = widgets[index];
              final item = _itemsBtn[index];
              return ListTile(
                contentPadding: EdgeInsets.only(top: 11, left: 17, right: 17,),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(42),
                        backgroundColor: Color(0xFFBC955C),
                      ),
                      child: Text('${item}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => widget,),);
                      },
                    )
                  ],
                ),
              );
            },
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
                  /*GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),*/
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
