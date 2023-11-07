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
          child: jsonSample == null
              ? Center(
            child: CircularProgressIndicator(),
          )
              :
          Column(
            children: [
              //simply pass this json to JsonTable
              JsonTable(
                jsonSample!,
                showColumnToggle: true,
                allowRowHighlight: true,
                rowHighlightColor: Colors.grey[500]!.withOpacity(0.7),
                paginationRowCount: 30,
                onRowSelect: (index, map) {
                  print(index);
                  print(map);
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              //Text((_records[index]['estado']) ),
            ],
          ),
        ),
      ),
    );
  }

  String getPrettyJSONString(jsonObject){
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
  }
  void _initData() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
      var data = json.decode(jsonString);
      print(data.runtimeType);
      if (mounted)
        setState(() {
          jsonSample = jsonDecode(jsonString) as List?;
        });
    } catch (e) {
      print(e);
    }
  }
}