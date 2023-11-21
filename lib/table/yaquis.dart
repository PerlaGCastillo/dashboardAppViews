import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Yaquis extends StatefulWidget {
  @override
  _YaquisState createState() => _YaquisState();
}

class _YaquisState extends State<Yaquis> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"Guaymas","CP":"85513","BENEFICIARIOS":"70"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"Guaymas","CP":"85507","BENEFICIARIOS":"37"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"Guaymas","CP":"85510","BENEFICIARIOS":"35"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"Cajeme","CP":"85217","BENEFICIARIOS":"16"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"Cajeme","CP":"85200","BENEFICIARIOS":"39"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"San Ignacio Río Muerto","CP":"85515","BENEFICIARIOS":"36"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"San Ignacio Río Muerto","CP":"85519","BENEFICIARIOS":"60"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Sonora","MUNICIPIOS":"Bacúm","CP":"85260","BENEFICIARIOS":"18"},{"PERIODO":"TOTAL","ESTADO":"","MUNICIPIOS":"","CP":"","BENEFICIARIOS":"311"}]';
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
          "Pueblo Yaqui",
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