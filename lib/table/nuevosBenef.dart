import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class NuevosBenef extends StatefulWidget {
@override
_NuevosBenefState createState() => _NuevosBenefState();
}

class _NuevosBenefState extends State<NuevosBenef> {
static String jsonSample ='[{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Hombres","CANTIDAD":"473,275"},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Mujeres","CANTIDAD":"647,268"},{"PERIODO":"01/01/2019 - 31/12/2019","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Total nuevos beneficiarios","CANTIDAD":"1,120,543"},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Hombres","CANTIDAD":"192,673"},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Mujeres","CANTIDAD":"251,912"},{"PERIODO":"01/01/2020 - 31/12/2020","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Total nuevos beneficiarios","CANTIDAD":"444,585"},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Hombres","CANTIDAD":"228,564"},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Mujeres","CANTIDAD":"312,584"},{"PERIODO":"01/01/2021 - 31/12/2021","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Total nuevos beneficiarios","CANTIDAD":"541,148"},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Hombres","CANTIDAD":"104,600"},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Nuevos beneficiarios Mujeres","CANTIDAD":"146,476"},{"PERIODO":"01/01/2022 - 31/12/2022","CONCEPTO SOLICITADO NUEVOS BENEFICIARIOS":"Total nuevos beneficiarios","CANTIDAD":"251,076"}]';
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
"Nuevos Beneficiarios",
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