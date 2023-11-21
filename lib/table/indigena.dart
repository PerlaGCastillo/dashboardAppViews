import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Indigena extends StatefulWidget {
  @override
  _IndigenaState createState() => _IndigenaState();
}

class _IndigenaState extends State<Indigena> {
  static String jsonSample ='[{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS INDÍGENAS":"Número de municipios en zonas indígenas","CANTIDAD":"622"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS INDÍGENAS":"Total de beneficiarios en  municipios de zonas indígenas","CANTIDAD":"315,170"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS INDÍGENAS":"Total de mujeres beneficiarias en  municipios de zonas indígenas","CANTIDAD":"182,506"},{"PERIODO":"01/01/2019 - 31/12/2022","MUNICIPIOS INDÍGENAS":"Total de Inversión en  municipios de zonas indígenas","CANTIDAD":"\$13,523,357,222.15"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS INDÍGENAS":"Número de municipios en zonas indígenas","CANTIDAD":"615"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS INDÍGENAS":"Total de beneficiarios en  municipios de zonas indígenas","CANTIDAD":"142,734"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS INDÍGENAS":"Total de mujeres beneficiarias en  municipios de zonas indígenas","CANTIDAD":"83,253"},{"PERIODO":"01/01/2019 -31/12/2019","MUNICIPIOS INDÍGENAS":"Total de Inversión en  municipios de zonas indígenas","CANTIDAD":"\$3,035,664,000.00"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS INDÍGENAS":"Número de municipios en zonas indígenas","CANTIDAD":"622"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS INDÍGENAS":"Total de beneficiarios en  municipios de zonas indígenas","CANTIDAD":"173,212"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS INDÍGENAS":"Total de mujeres beneficiarias en  municipios de zonas indígenas","CANTIDAD":"102,087"},{"PERIODO":"01/01/2020 -31/12/2020","MUNICIPIOS INDÍGENAS":"Total de Inversión en  municipios de zonas indígenas","CANTIDAD":"\$3,673,880,522.00"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS INDÍGENAS":"Número de municipios en zonas indígenas","CANTIDAD":"621"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS INDÍGENAS":"Total de beneficiarios en  municipios de zonas indígenas","CANTIDAD":"138,357"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS INDÍGENAS":"Total de mujeres beneficiarias en  municipios de zonas indígenas","CANTIDAD":"79,245"},{"PERIODO":"01/01/2021 -31/12/2021","MUNICIPIOS INDÍGENAS":"Total de Inversión en  municipios de zonas indígenas","CANTIDAD":"\$3,274,662,062.99"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS INDÍGENAS":"Número de municipios en zonas indígenas","CANTIDAD":"602"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS INDÍGENAS":"Total de beneficiarios en  municipios de zonas indígenas","CANTIDAD":"102,626"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS INDÍGENAS":"Total de mujeres beneficiarias en  municipios de zonas indígenas","CANTIDAD":"60,322"},{"PERIODO":"01/01/2022 -31/12/2022","MUNICIPIOS INDÍGENAS":"Total de Inversión en  municipios de zonas indígenas","CANTIDAD":"\$3,539,150,637.16"}]';
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
          "Municipios Indígenas",
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
