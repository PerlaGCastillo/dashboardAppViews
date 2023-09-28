import 'dart:convert';

import 'package:dgapd/entities/records.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(Prueba());

class Prueba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'json',
      theme: ThemeData(
        primaryColor: Color(0xff10312b),
      ),
      home: EntityList(),
    );
  }
}

class EntityList extends StatefulWidget {

  @override
  _EntityListState createState() => _EntityListState();
}

class _EntityListState extends State<EntityList> {

  List<Records> _records = List<Records>();

  Future<List<Records>> fetchRecords() async {
    var url = 'https/raw.githubusercontent.com/boriszv/json/master/random_example.json';
    var response = await http.get(url);

    var records = List<Records>();

    if(response.statusCode ==200){
      var records = json.decode(response.body);
      for (var recordJson in recordsJson){
        //records.add(Records(estado, cve_edo, hombres, mujeres, id_estado, año_presupuestal))
        records.add(Records.fromJson(recordJson));
      }
    }
    return records;
  }

  @override
  void initState(){
    fetchRecords().then((value){
      setState(() {
        _records.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Json List vista de prueba',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Prueba despliegue lista con JSON'),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top:32.0, bottom: 32.0, left: 16.0, right: 16.0),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _records[index].estado,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      Text( _records[index].cve_edo),
                      Text( _records[index].hombres),
                      Text( _records[index].mujeres),
                      Text( _records[index].id_estado),
                      Text( _records[index].año_presupuestal),
                    ],
                  ),
                ),
              );
            },
            itemCount: _records.length,
          )
      ),
    );
  }

}

}
