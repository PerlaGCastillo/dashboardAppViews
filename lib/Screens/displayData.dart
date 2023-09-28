import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class displayData extends StatefulWidget {
  const displayData({super.key});

  @override
  State<displayData> createState() => _displayDataState();
}

class _displayDataState extends State<displayData> {
  List _records = [];
  
  Future<void> readJson() async{
    final String response = await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _records.isNotEmpty?Expanded(
            child: ListView.builder(
              itemCount: _records.length,
              itemBuilder: (context, index) {
                return Card(
                  key: ValueKey(_records[index]["estado"]),
                  margin: const EdgeInsets.all(10),
                  color: Color(0xf8959595),
                  child: ListTile(
                    leading: Text(_records[index]["cve_edo"]),
                    title: Text(_records[index]["hombres"]),
                    subtitle: Text(_records[index]["mujeres"]),
                  ),
                );
              },
            ),
          ): ElevatedButton(
              onPressed: (){
                readJson();
              },
              child: Center(
                child: Text('Mostrar Datos'),
              ),

          )
        ],
      ),
    );
  }
}
