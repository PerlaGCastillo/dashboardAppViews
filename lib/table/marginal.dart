import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Marginal extends StatefulWidget {
  @override
  _MarginalState createState() => _MarginalState();
}

class _MarginalState extends State<Marginal> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de beneficiarios en 790 municipios de alta y muy alta marginación.","CANTIDAD":"423,379"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de mujeres beneficiarias en 790 municipios de alta y muy alta marginación.","CANTIDAD":"244,215"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de Inversión en 790 municipios alta y muy alta marginación.","CANTIDAD":"\$18,295,255,933.33"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de beneficiarios en 1,100 municipios de alta y muy alta marginación.","CANTIDAD":"293,632"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de mujeres beneficiarias en 1,100 municipios de alta y muy alta marginación.","CANTIDAD":"169,258"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de Inversión en 1,100 municipios alta y muy alta marginación.","CANTIDAD":"\$6,457,118,400.00"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de beneficiarios en 1,100 municipios de alta y muy alta marginación.","CANTIDAD":"349252"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de mujeres beneficiarias en 1,100 municipios de alta y muy alta marginación.","CANTIDAD":"204208"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de Inversión en 1,100 municipios alta y muy alta marginación.","CANTIDAD":"\$7,121,544,842.00"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de beneficiarios en 790 municipios de alta y muy alta marginación.","CANTIDAD":"181,618"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de mujeres beneficiarias en 790 municipios de alta y muy alta marginación.","CANTIDAD":"104,040"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de Inversión en 790 municipios alta y muy alta marginación.","CANTIDAD":"\$4,246,872,831.53"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de beneficiarios en 790 municipios de alta y muy alta marginación.","CANTIDAD":"133,643"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de mujeres beneficiarias en 790 municipios de alta y muy alta marginación.","CANTIDAD":"78,012"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS CON ALTA Y MUY ALTA MARGINACIÓN":"Total de Inversión en 790 municipios alta y muy alta marginación.","CANTIDAD":"\$4,770,628,277.80"}]';
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
          "Municipios con alta y muy alta marginación",
          style:
          TextStyle(fontSize: 15.0),
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
