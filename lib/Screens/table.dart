import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_table/json_table.dart';

class LocalTable extends StatefulWidget {
  @override
  _LocalTableState createState() => _LocalTableState();
}

class _LocalTableState extends State<LocalTable> {
  List? jsonSample;

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: /*jsonSample == null
              ? Center(
            child: CircularProgressIndicator(),
          )
              :*/ Column(
            children: [
              JsonTable(
                jsonSample!,
                showColumnToggle: true,
                allowRowHighlight: true,
                rowHighlightColor: Colors.yellow[500]!.withOpacity(0.7),
                paginationRowCount: 20,
                onRowSelect: (index, map) {
                  print(index);
                  print(map);
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                  "Simple table which creates table from local json file")
            ],
          ),
        ),
      ),
    );
  }

/*  String getPrettyJSONString(jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }*/
  String getPrettyJSONString(jsonObject){
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
  }
  void _initData() async {
    try {
      final jsonString = await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
      if (mounted)
        setState(() {
          jsonSample = jsonDecode(jsonString) as List?;
        });
    } catch (e) {
      print(e);
    }
  }
}
/*

String name =  "{click_action: FLUTTER_NOTIFICATION_CLICK, sendByImage: https://ujjwalchef.staging-server.in/uploads/users/1636620532.png, status: done, sendByName: mohittttt, id: HM11}";
List<String> str = name.replaceAll("{","").replaceAll("}","").split(",");
Map<String,dynamic> result = {};
for(int i=0;i<str.length;i++){
List<String> s = str[i].split(":");
result.putIfAbsent(s[0].trim(), () => s[1].trim());
}
print(result);
}*/
