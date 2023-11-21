import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Discapacidad extends StatefulWidget {
  @override
  _DiscapacidadState createState() => _DiscapacidadState();
}

class _DiscapacidadState extends State<Discapacidad> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Total de beneficiarios con discapacidad","CANTIDAD":"10,884"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Total de mujeres beneficiarias con discapacidad","CANTIDAD":"5,197"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Total de hombres beneficiarias con discapacidad","CANTIDAD":"5,687"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Con discapacidad mental","CANTIDAD":"612"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Con discapacidad motriz","CANTIDAD":"2,019"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Con discapacidad múltiple","CANTIDAD":"953"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Con discapacidad sensorial","CANTIDAD":"7,300"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO":"Total de Inversión beneficiarios con discapacidad","CANTIDAD":"\$398,021,983.90"}]';
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
          "Por Municipio",
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
