import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Informe extends StatefulWidget {
  @override
  _InformeState createState() => _InformeState();
}

class _InformeState extends State<Informe> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO SOLICITADO":"Informe acumuladomodel.dart de pago de apoyo económico","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO SOLICITADO":"Informes acumuladomodel.dart de pago IMSS","COMENTARIOS/OBSERVACIONES":"\$1,450,579,952.37"},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO SOLICITADO":"Informe acumuladomodel.dart de Atención al Público a través de Call Center","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO":"Informe de pago de apoyo económico","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO":"Informes de pago  IMSS","COMENTARIOS/OBSERVACIONES":"\$356,497,895.78"},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO":"Informe de Atención al Público a través de Call Center","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO":"Informe de pago de apoyo económico","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO":"Informes de pago  IMSS","COMENTARIOS/OBSERVACIONES":"\$793,753,491.66"},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO":"Informe de Atención al Público a través de Call Center","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO":"Informe de pago de apoyo económico","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO":"Informes de pago  IMSS","COMENTARIOS/OBSERVACIONES":"\$1,086,531,444.29"},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO":"Informe de Atención al Público a través de Call Center","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO":"Informe de pago de apoyo económico","COMENTARIOS/OBSERVACIONES":""},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO":"Informes de pago  IMSS","COMENTARIOS/OBSERVACIONES":"\$1,450,579,952.37"},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO":"Informe de Atención al Público a través de Call Center"}]';
  bool toggle = true;

  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSample),
  );

  final _tema = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _tema.add(_controller.text);
    _controller.addListener(() {
      _tema.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Informes",
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
    return _tema.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _tema.close();
    _controller.dispose();
    super.dispose();
  }
}