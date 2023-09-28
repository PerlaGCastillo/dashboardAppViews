import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

void main() => runApp(ListData());

class ListData extends StatelessWidget {
  //const ListData(?Key? key) : super(key:key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List _records = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString(
        'assets/json/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);

    setState(() {
      _records = data["records"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lista con json'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: readJson,
              child: const Text('Mostrar por Género y Año Presupuestal'),
            ),
            _records.isNotEmpty ? Expanded(
              child: ListView.builder(
                itemCount: _records.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(9),
                    child: ListTile(
                      leading: Text(_records[index]['estado']),
                      title: Text(_records[index]['cve_edo']),
                      subtitle: Text(_records[index]['hombres']),
                    ),
                  );
                },
              ),
            ) : Container()
          ],
        ),
      ),
    );
  }
}
