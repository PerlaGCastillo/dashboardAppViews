import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dgapd/Screens/btnList.dart';


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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisSize: MainAxisSize.min,
        children: [
          _records.isNotEmpty?Expanded(
            child: ListView.builder(
              itemCount: _records.length,
              itemBuilder: (context, index) {
                return Card(
                  key: ValueKey(_records[index]["estado"]),
                  margin: const EdgeInsets.all(10),
                  color: Color(0xFF959595),
                  child: ListTile(
                    leading: Text(_records[index]["cve_edo"]),
                    title: Text(_records[index]["estado"]),
                    subtitle: Text(_records[index]["mujeres"]),
                  ),
                );
              },
            ),
          ): ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size( 350,37 ),
              alignment: Alignment.center,  backgroundColor: Color(0xFFBC955C), ),
            onPressed: (){
              readJson();
            },
            child: Center(
              child: Text('Acumulado (json)'),
            ),
          ),
        ],
      ),
    );
  }
}