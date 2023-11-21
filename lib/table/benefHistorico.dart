import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class BenefHistorico extends StatefulWidget {
@override
_BenefHistoricoState createState() => _BenefHistoricoState();
}

class _BenefHistoricoState extends State<BenefHistorico> {
static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de beneficiarios histórico","CANTIDAD":"2,357,352","":""},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de beneficarios hombres ","CANTIDAD":"999,112","":""},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de beneficarios  mujeres","CANTIDAD":"1,358,240","":""},{"PERIODO":"2019","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de Inversión apoyo económico","CANTIDAD":"23,520,931,200.00","":""},{"PERIODO":"2020","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de Inversión apoyo económico","CANTIDAD":"24,133,495,330.00","":""},{"PERIODO":"2021","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de Inversión apoyo económico","CANTIDAD":"19,928,268,266.08","":""},{"PERIODO":"2022","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de Inversión apoyo económico","CANTIDAD":"20,853,515,807.98","":""},{"PERIODO":"01/01/2019 - 31/12/2022","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de Inversión apoyo económico (en el periodo del reporte)","CANTIDAD":"88,436,210,604.06","":""},{"PERIODO":"2019","CONCEPTO BENEFICIARIOS HISTÓRICO":"Total de Inversión IMSS","CANTIDAD":"329,067,726.31","":""}]';
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
title: Text("Concepto Beneficiarios Histórico",),
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