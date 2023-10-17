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

  List _records = [];

  Future<void> readJson() async {
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
      appBar: AppBar(
        backgroundColor: Color(0xff10312b),
        centerTitle: true,
        titleSpacing: 10.0,
        title: Text('Consulta Histórico'),
        //TODO: make it work
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context,true);
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        /*leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),*/
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          _records.isNotEmpty
              ? Expanded(
            child: ListView.builder(
              itemCount: _records.length,
              itemBuilder: (context, index) {
                return Card(
                  key: ValueKey(_records[index]["estado"]),
                  margin: const EdgeInsets.all(10),
                  color: Color(0xF8E4E4E4),
                  child:Column(
                    children: <Widget>[
                      Text(_records[index]["estado"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                      ),),
                      Text(_records[index]["cve_edo"]),
                      Text('Clave del estado'),
                      Text(_records[index]["mujeres"]),
                      Text('Mujeres'),
                      Text(_records[index]["hombres"]),
                      Text('Hombres'),

                    ],
                  ),
                  // child: ListTile(
                  //   leading: Text(_records[index]["cve_edo"]),
                  //   title: Text(_records[index]["estado"]),
                  //   subtitle: Text(_records[index]["mujeres"]),
                  // ),
                );
              },
            ),
          ): Expanded(child: ListView.builder(
            itemCount: _itemsBtn.length,
            itemBuilder: (context, index) {
              final item = _itemsBtn[index];

              return ListTile(
                contentPadding: EdgeInsets.only(top:7, left: 17, right: 17,),
                title:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(400, 37),
                        backgroundColor: Color(0xFFBC955C),
                      ),
                      child: Text( '${item}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,),
                      ),
                      onPressed: (){ readJson(); },
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
