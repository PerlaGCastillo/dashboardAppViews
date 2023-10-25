import 'dart:convert';
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
/*  final List<String> _itemsBtn = [
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
  ];*/

  List _records = [];

  Future<void> acumuladoJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> generoJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> mespagadoJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> gposvulnerablesJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> centrosbenefJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> entidadJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> areainteresJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> escolaridadJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> vincencapacitacionJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> municipioJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  Future<void> sectorJson() async {
    final String response =
    await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

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
      height: MediaQuery.of(context).size.height-180,
      width: MediaQuery.of(context).size.width-40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ Scaffold(

        ),
        ],
      ),
    );
  }


  Column acumulado(BuildContext, context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _records.isNotEmpty ? Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(9.0),
              itemCount: _records.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color(0xF8E4E4E4),
                  margin: const EdgeInsets.all(10),
                  child:Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_records[index]["estado"],
                          style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        Text(_records[index]["cve_edo"]),
                        Text('Clave'),
                        Text(_records[index]["mujeres"]),
                        Text("mujeres"),
                        Text(_records[index]["hombres"]),
                        Text("hombres"),
                        Text(_records[index]["año_presupuestal"]),
                        Text("año presupuestal"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ) : Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
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
                      child: Text('Acumulado',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,),
                      ),
                      onPressed: () {
                       acumuladoJson();
                      },
                    )
                  ],
                ),
              );
            },
          ),),
        ],
    );
  }

  Column generoedad(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Por género, por edad',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                      generoJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column mespagado(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Por mes pagado',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                      mespagadoJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column gpovulnerable(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Por grupos vulnerables',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                     gposvulnerablesJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column centrosbenef(BuildContext, context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _records.isNotEmpty ? Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(9.0),
              itemCount: _records.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color(0xF8E4E4E4),
                  margin: const EdgeInsets.all(10),
                  child:Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_records[index]["estado"],
                          style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        Text(_records[index]["cve_edo"]),
                        Text('Clave'),
                        Text(_records[index]["mujeres"]),
                        Text("mujeres"),
                        Text(_records[index]["hombres"]),
                        Text("hombres"),
                        Text(_records[index]["año_presupuestal"]),
                        Text("año presupuestal"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ) : Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
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
                      child: Text('Centros con beneficiarios',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,),
                      ),
                      onPressed: () {
                       centrosbenefJson();
                      },
                    )
                  ],
                ),
              );
            },
          ),),
        ],
    );
  }

  Column entidad(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Por entidad',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                      entidadJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column areainteres(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Por área de interés',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                      areainteresJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column escolaridad(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Escolaridad',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                     escolaridadJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column vinculadoscapacitacion(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Vinculados en capacitación',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                      vincencapacitacionJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column municipio(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Por municipio',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                      municipioJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
  }

  Column sector(BuildContext, context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _records.isNotEmpty ? Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(9.0),
            itemCount: _records.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xF8E4E4E4),
                margin: const EdgeInsets.all(10),
                child:Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_records[index]["estado"],
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave'),
                      Text(_records[index]["mujeres"]),
                      Text("mujeres"),
                      Text(_records[index]["hombres"]),
                      Text("hombres"),
                      Text(_records[index]["año_presupuestal"]),
                      Text("año presupuestal"),
                    ],
                  ),
                ),
              );
            },
          ),
        ) : Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
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
                    child: Text('Por sector',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,),
                    ),
                    onPressed: () {
                     sectorJson();
                    },
                  )
                ],
              ),
            );
          },
        ),),
      ],
    );
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Text(
                      'Consulta histórica',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.download_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}