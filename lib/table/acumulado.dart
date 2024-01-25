import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Acumulado extends StatefulWidget {
  const Acumulado({super.key});

  @override
  State<Acumulado> createState() => _AcumuladoState();
}

class _AcumuladoState extends State<Acumulado> {
  static String jsonSampleAcumulado = '[{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Acumulado de Beneficiarios Hombres","CANTIDAD":"473,275"},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Acumulado de Beneficiarios Mujeres","CANTIDAD":"647,268"},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Total Acumulado de Beneficiarios","CANTIDAD":"1,120,543"},{"PERIODO":"01/01/2019 - 31/12/2020","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Acumulado de Beneficiarios Hombres","CANTIDAD":"665,948"},{"PERIODO":"01/01/2019 - 31/12/2020","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Acumulado de Beneficiarios Mujeres","CANTIDAD":"899,180"},{"PERIODO":"01/01/2019 - 31/12/2020","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Total Acumulado de Beneficiarios","CANTIDAD":"1,565,128"},{"PERIODO":"01/01/2019 - 31/12/2021","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Acumulado de Beneficiarios Hombres","CANTIDAD":"894,512"},{"PERIODO":"01/01/2019 - 31/12/2021","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Acumulado de Beneficiarios Mujeres","CANTIDAD":"1,211,764"},{"PERIODO":"01/01/2019 - 31/12/2021","CONCEPTO SOLICITADO BENEFICIARIOS ACUMULADOS":"Total Acumulado de Beneficiarios","CANTIDAD":"2,106,276"}]';
  bool toggle = true;
  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSampleAcumulado),
  );

  final _subjct = BehaviorSubject<String>();

  @override
  void initState(){
    super.initState();
    _subjct.add(_controller.text);
    _controller.addListener(() {
      _subjct.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Acumulado",
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
    return _subjct.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _subjct.close();
    _controller.dispose();
    super.dispose();
  }
}