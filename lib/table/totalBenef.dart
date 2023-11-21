import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class TotalBenef extends StatefulWidget {
  @override
  _TotalBenefState createState() => _TotalBenefState();
}

class _TotalBenefState extends State<TotalBenef> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"TOTAL (hombres y mujeres) 2019","CANTIDAD":"1,120,543"},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"HOMBRES 2019","CANTIDAD":"473,275"},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"MUJERES 2019","CANTIDAD":"647,268"},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"TOTAL (hombres y mujeres) 2020","CANTIDAD":"1,234,016"},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"HOMBRES 2020","CANTIDAD":"507,281"},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"MUJERES 2020","CANTIDAD":"726,735"},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"TOTAL (hombres y mujeres) 2021","CANTIDAD":"924,892"},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"HOMBRES 2021","CANTIDAD":"387,215"},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"MUJERES 2021","CANTIDAD":"537,677"},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"TOTAL (hombres y mujeres) 2022","CANTIDAD":"679,033"},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"HOMBRES 2022","CANTIDAD":"279,534"},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO TOTAL DE BENEFICIARIOS ":"MUJERES 2022","CANTIDAD":"399,499"}]';

  bool toggle = true;

  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSample),
  );

  final _subjecctt = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _subjecctt.add(_controller.text);
    _controller.addListener(() {
      _subjecctt.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Total de Beneficiarios",
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
    return _subjecctt.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _subjecctt.close();
    _controller.dispose();
    super.dispose();
  }
}

