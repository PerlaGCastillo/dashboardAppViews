import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Egresados extends StatefulWidget {
  @override
  _EgresadosState createState() => _EgresadosState();
}

class _EgresadosState extends State<Egresados> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO SOLICITADO (HISTÓRICO DE EGRESADOS)":"Histórico de egresados","CANTIDAD":"1,167,714"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO SOLICITADO (HISTÓRICO DE EGRESADOS)":"Hombres","CANTIDAD":"460,671"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO SOLICITADO (HISTÓRICO DE EGRESADOS)":"Mujeres","CANTIDAD":"707,043"}]';
  bool toggle = true;

  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSample),
  );

  final _suubject = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _suubject.add(_controller.text);
    _controller.addListener(() {
      _suubject.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Histórico de egresados",
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 16,
            ),
            StreamBuilder<List?>(
                stream: _getStream(),
                builder: (context, snapshot) {
                  return Expanded(
                    child: snapshot.hasData && snapshot.data != null
                        ? Card(
                      elevation: 0,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(16.0),
                        child: JsonTable(
                          snapshot.data!,
                          showColumnToggle: true,
                          allowRowHighlight: true,
                          rowHighlightColor:
                          Colors.grey[500]!.withOpacity(0.7),
                          paginationRowCount: 20,
                          onRowSelect: (index, map) {
                            print(index);
                            print(map);
                          },
                        ),
                      ),
                    )
                        : Center(
                      child: Text(
                        "agrega el formato JSON adecuado",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  String getPrettyJSONString(String jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }

  Stream<List?> _getStream() {
    return _suubject.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _suubject.close();
    _controller.dispose();
    super.dispose();
  }
}