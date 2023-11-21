import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Violencia extends StatefulWidget {
  @override
  _ViolenciaState createState() => _ViolenciaState();
}

class _ViolenciaState extends State<Violencia> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Número de municipios con altos índices de violencia","CANTIDAD":"241"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de beneficiarios en  municipios con altos índices de violencia","CANTIDAD":"555,004"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de mujeres beneficiarias en  municipios con altos índices de violencia","CANTIDAD":"319,279"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de Inversión en municipios con altos índices de violencia ","CANTIDAD":"\$18,596,252,393.71"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Número de municipios con altos índices de violencia","CANTIDAD":"238"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de beneficiarios en  municipios con altos índices de violencia","CANTIDAD":"264,524"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de mujeres beneficiarias en  municipios con altos índices de violencia","CANTIDAD":"151,293"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de Inversión en municipios con altos índices de violencia ","CANTIDAD":"\$5,237,787,600.00"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Número de municipios con altos índices de violencia","CANTIDAD":"240"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de beneficiarios en  municipios con altos índices de violencia","CANTIDAD":"257,673"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de mujeres beneficiarias en  municipios con altos índices de violencia","CANTIDAD":"151,402"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de Inversión en municipios con altos índices de violencia ","CANTIDAD":"\$4,862,068,136.00"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Número de municipios con altos índices de violencia","CANTIDAD":"240"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de beneficiarios en  municipios con altos índices de violencia","CANTIDAD":"196,559"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de mujeres beneficiarias en  municipios con altos índices de violencia","CANTIDAD":"115,300"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de Inversión en municipios con altos índices de violencia ","CANTIDAD":"\$3,962,846,485.59"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Número de municipios con altos índices de violencia","CANTIDAD":"238"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de beneficiarios en  municipios con altos índices de violencia","CANTIDAD":"161,499"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de mujeres beneficiarias en  municipios con altos índices de violencia","CANTIDAD":"95,298"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS CON ALTOS ÍNDICES DE VIOLENCIA":"Total de Inversión en municipios con altos índices de violencia ","CANTIDAD":"\$4,533,550,172.12"}]';
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
          "Altos índices de violencia",
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
