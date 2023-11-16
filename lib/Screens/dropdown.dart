import 'package:flutter/material.dart';

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

void main() {
  runApp(const MyList());
}

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consulta histórica',
      theme: ThemeData(
        //primarySwatch: Color(0xff691c32),
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 32),
          bodyText2: TextStyle(fontSize: 32),
          subtitle1: TextStyle(fontSize: 32),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const DropdownListTutorial(),
    );
  }
}

class DropdownListTutorial extends StatefulWidget {
  const DropdownListTutorial({Key? key}) : super(key: key);

  @override
  _DropdownListTutorialState createState() => _DropdownListTutorialState();
}

class _DropdownListTutorialState extends State<DropdownListTutorial> {
  final List<Widget> widgets = [ Acumulado(), PorGeneroEdad(), PorGeneroAnio(), PorMesPagado(), PorGpoVulnera(), CentrosBenef(), PorEntidad(), PorAreaInteres(),PorEscolaridad(), VinculadosCapacitacion(), PorMunicipio(), PorSector()];

  List<String> items = [ "Por género, por año",'Acumulado', "Por género, por edad", "Por mes pagado", "Por grupos vulnerables","Centros con beneficiarios","Por entidad", "Por área de interés", "Por escolaridad", "Vinculados en capacitación", "Por municipio", "Por sector"];
  String currentItem = "";
  @override
  void initState() {
    currentItem = items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consulta histórica"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                //  color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(

              alignment: Alignment.topCenter,
                borderRadius: BorderRadius.circular(8),
                //dropdownColor: Colors.blueAccent,
                value: currentItem,
                items: items
                    .map<DropdownMenuItem<String>>(
                      (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                    alignment: Alignment.center,
                  ),
                )
                    .toList(),
                onChanged: (String? value) => setState(
                      () {
                    if (value != null) currentItem = value;
                  },
                ),
              ),
            ),
            Text(currentItem),
          ],
        ),
      ),
    );
  }
}