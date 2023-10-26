import 'dart:convert';
import 'package:dgapd/Screens/btn/acumuladosbtn.dart';
import 'package:dgapd/Screens/btn/areaint.dart';
import 'package:dgapd/Screens/btn/centrosbenefbtn.dart';
import 'package:dgapd/Screens/btn/entidadbtn.dart';
import 'package:dgapd/Screens/btn/escolaridadbtn.dart';
import 'package:dgapd/Screens/btn/generoedadbtn.dart';
import 'package:dgapd/Screens/btn/gpovulnerablebtn.dart';
import 'package:dgapd/Screens/btn/mespagadobtn.dart';
import 'package:dgapd/Screens/btn/municipiobtn.dart';
import 'package:dgapd/Screens/btn/sectorbtn.dart';
import 'package:dgapd/Screens/btn/vinculadoscapacitacionbtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final List<String> _itemsBtn = [
    'Acumulado',
    "Por género, por edad",
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

  /*List _records = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString(
        'assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }
*/

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
      height: MediaQuery.of(context)
          .size
          .height - 180,
      width: MediaQuery.of(context)
          .size
          .width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AcumuladoBtn(context),
          GeneroEdadBtn(context),
          MesPagadoBtn(context),
          GpoVulneraBtn(context),
          CentrosBenefBtn(context),
          EntidadBtn(context),
          AreaInteresBtn(context),
          EscolaridadBtn(context),
          VinCapacitacionBtn(context),
          MunicipioBtn(context),
          SectorBtn(context),
        ];
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
          color: Color(0xff10312b),
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
/*
                    Icon(
                      Icons.download_rounded,
                      color: Colors.white,
                    )
*/
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}