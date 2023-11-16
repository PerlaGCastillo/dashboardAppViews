import 'dart:convert';
import 'package:data/table/acumulado.dart';
import 'package:data/table/generoedad.dart';
import 'package:data/table/generoanio.dart';
import 'package:data/table/mespagado.dart';
import 'package:data/table/gpovulnerable.dart';
import 'package:data/table/centrosbeneficiarios.dart';
import 'package:data/table/entidad.dart';
import 'package:data/table/areainteres.dart';
import 'package:data/table/escolaridad.dart';
import 'package:data/table/vinculadoscapacitacion.dart';
import 'package:data/table/municipio.dart';
import 'package:data/table/sector.dart';

import 'package:flutter/material.dart';

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
  final List<Widget> widgets = [ Acumulado(), PorGeneroEdad(), PorGeneroAnio(), PorMesPagado(), PorGpoVulnera(), CentrosBenef(), PorEntidad(), PorAreaInteres(),PorEscolaridad(), VinculadosCapacitacion(), PorMunicipio(), PorSector()];
  final List<String> _itemsBtn = [
    'Acumulado',
    "Por género, por edad",
    "Por género, por año",
    "Por mes pagado",
    "Por grupos vulnerables",
    "Centros con beneficiarios",
    "Por entidad",
    "Por área de interés",
    "Por escolaridad",
    "Vinculados en capacitación",
    "Por municipio",
    "Por sector"
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
              )
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
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => PorGeneroAnio()));
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
                    'Consulta histórica',
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
