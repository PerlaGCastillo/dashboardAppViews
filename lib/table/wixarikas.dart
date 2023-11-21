import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Wixarikas extends StatefulWidget {
  @override
  _WixarikasState createState() => _WixarikasState();
}

class _WixarikasState extends State<Wixarikas> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Durango","MUNICIPIOS":"Mezquital","BENEFICIARIOS":"1,217","INVERSIÓN":"\$75,842,765.27"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Durango","MUNICIPIOS":"Pueblo Nuevo","BENEFICIARIOS":"1,986","INVERSIÓN":"\$81,708,640.08"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Durango","MUNICIPIOS":"Súchil","BENEFICIARIOS":"535","INVERSIÓN":"\$24,940,312.42"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Jalisco","MUNICIPIOS":"Bolaños","BENEFICIARIOS":"62","INVERSIÓN":"\$2,317,000.48"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Jalisco","MUNICIPIOS":"Chimaltitán","BENEFICIARIOS":"7","INVERSIÓN":"\$319,749.30"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Jalisco","MUNICIPIOS":"Huejuquilla el Alto","BENEFICIARIOS":"38","INVERSIÓN":"\$1,132,398.71"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Jalisco","MUNICIPIOS":"Mezquitic","BENEFICIARIOS":"156","INVERSIÓN":"\$6,345,288.65"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Jalisco","MUNICIPIOS":"Villa Guerrero","BENEFICIARIOS":"32","INVERSIÓN":"\$722,464.58"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"Acaponeta","BENEFICIARIOS":"2,433","INVERSIÓN":"\$92,631,137.37"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"Del Nayar","BENEFICIARIOS":"591","INVERSIÓN":"\$37,378,052.24"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"Huajicori","BENEFICIARIOS":"757","INVERSIÓN":"\$32,515,257.99"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"La Yesca","BENEFICIARIOS":"318","INVERSIÓN":"\$16,628,124.09"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"Rosamorada","BENEFICIARIOS":"1,415","INVERSIÓN":"\$53,036,898.23"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"Ruíz","BENEFICIARIOS":"2,315","INVERSIÓN":"\$84,148,212.35"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"Santa María del Oro","BENEFICIARIOS":"251","INVERSIÓN":"\$8,828,452.31"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Nayarit","MUNICIPIOS":"Santiago Ixcuintla","BENEFICIARIOS":"1,954","INVERSIÓN":"\$67,871,899.84"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Zacatecas","MUNICIPIOS":"Valparaíso","BENEFICIARIOS":"2,910","INVERSIÓN":"\$117,821,947.90"},{"PERIODO":"TOTAL","ESTADO":"","MUNICIPIOS":"","BENEFICIARIOS":"16,977","INVERSIÓN":"\$704,188,601.81"}]';
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
          "Wixárika, O'Dam, Au'dam, Naáyeri, Mexikan",
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