import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Seguro extends StatefulWidget {
  @override
  _SeguroState createState() => _SeguroState();
}

class _SeguroState extends State<Seguro> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 -31/12/2019","CONCEPTO SOLICITADO (SEGURO MÉDICO)":"Jóvenes incorporados al IMSS","CANTIDAD":"1,151,804"},{"PERIODO":"01/01/2020 -31/12/2020","CONCEPTO SOLICITADO (SEGURO MÉDICO)":"Jóvenes incorporados al IMSS","CANTIDAD":"467,526"},{"PERIODO":"01/01/2021 -31/12/2021","CONCEPTO SOLICITADO (SEGURO MÉDICO)":"Jóvenes incorporados al IMSS","CANTIDAD":"592,013"},{"PERIODO":"01/01/2022 -31/12/2022","CONCEPTO SOLICITADO (SEGURO MÉDICO)":"Jóvenes incorporados al IMSS","CANTIDAD":"254,501"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO SOLICITADO (SEGURO MÉDICO)":"Jóvenes incorporados al IMSS","CANTIDAD":"2,465,844"}]';
  bool toggle = true;

  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSample),
  );

  final _subbjjject = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _subbjjject.add(_controller.text);
    _controller.addListener(() {
      _subbjjject.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Seguro Médico",
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
    return _subbjjject.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _subbjjject.close();
    _controller.dispose();
    super.dispose();
  }
}
