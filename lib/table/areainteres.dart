import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class PorAreaInteres extends StatefulWidget {
  @override
  _PorAreaInteresState createState() => _PorAreaInteresState();
}

class _PorAreaInteresState extends State<PorAreaInteres> {
  static String jsonSampleArea = '[{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Administrativa","CANTIDAD (HOMBRES)":"275,757","CANTIDAD (MUJERES)":"454,225","TOTAL":"729,982"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Agropecuaria","CANTIDAD (HOMBRES)":"111,735","CANTIDAD (MUJERES)":"106,074","TOTAL":"217,809"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Ciencia y Tecnología","CANTIDAD (HOMBRES)":"3,408","CANTIDAD (MUJERES)":"6,865","TOTAL":"10,273"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Cultura y deporte","CANTIDAD (HOMBRES)":"289,666","CANTIDAD (MUJERES)":"385,906","TOTAL":"675,572"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Electricidad","CANTIDAD (HOMBRES)":"16,088","CANTIDAD (MUJERES)":"7,779","TOTAL":"23,867"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Industrial","CANTIDAD (HOMBRES)":"15,060","CANTIDAD (MUJERES)":"7,506","TOTAL":"22,566"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Oficios","CANTIDAD (HOMBRES)":"79,022","CANTIDAD (MUJERES)":"82,487","TOTAL":"161,509"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Profesionista","CANTIDAD (HOMBRES)":"3,004","CANTIDAD (MUJERES)":"5,970","TOTAL":"8,974"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Servicios","CANTIDAD (HOMBRES)":"53,968","CANTIDAD (MUJERES)":"69,199","TOTAL":"123,167"},{"PERIODO":"01/01/2019 - 31/12/2022","BENEFICIARIOS POR ÁREA DE INTERÉS":"Ventas/ Comercio","CANTIDAD (HOMBRES)":"151,404","CANTIDAD (MUJERES)":"232,229","TOTAL":"383,633"},{"PERIODO":"TOTAL","BENEFICIARIOS POR ÁREA DE INTERÉS":"","CANTIDAD (HOMBRES)":"999,112","CANTIDAD (MUJERES)":"1,358,240","TOTAL":"2,357,352"}]';
  bool toggle = true;

  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSampleArea),
  );

  final _sbject = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _sbject.add(_controller.text);
    _controller.addListener(() {
      _sbject.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Área de interés",
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
    return _sbject.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _sbject.close();
    _controller.dispose();
    super.dispose();
  }
}