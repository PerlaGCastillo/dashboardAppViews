import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class dataView extends StatelessWidget {
  const dataView({super.key});

  @override
  Widget build(BuildContext context) {
    return displayData();
  }
}

class displayData extends StatefulWidget {
  const displayData({super.key});

  @override
  State<displayData> createState() => _displayDataState();
}

class _displayDataState extends State<displayData> {
  final List<String> _itemsBtn = [
    'Acumulado',
    "Por género, por edad",
    "Por mes pagado",
    "Por grupos vulnerables",
    "Centros con beneficiarios",
    "Por entidad",
    "Por área de interés",
    "Por escolaridad",
    "Vinculados en capacitación",
    "Por municipio",
    "Por sector"
  ];

List _records = [];

//TODO check it up and check it off"
// https://copyprogramming.com/howto/load-multiple-json-files-in-flutter
// https://stackoverflow.com/questions/61228977/how-to-pass-multiple-data-fetched-from-json-to-next-screen-in-flutter
// https://stackoverflow.com/questions/75250664/flutter-multiple-json-data-nested

//one option is to place both calls within an asynchronous method and subsequently await it
 /*
  Future<List<loadJson>> loadJsn(){
   return get(_loadJson())
       .then(response) => json.decode(response.body))
       .then((parsed) => parsed.map(json) => )
 }*/


//https://stackoverflow.com/questions/68929912/convert-map-to-json-string-flutter

//wrap calles in an asynchonous method and await on that
  Future<Map<String, dynamic>> loadJson() async{
    final jsonA = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnioPresupuestal.json');
    final jsonB = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnio.json');
    final jsonC = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnioPresupuestal.json');
    final jsonD = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnio.json');
    final jsonE = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnioPresupuestal.json');
    final jsonF = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnio.json');
    final jsonG = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnioPresupuestal.json');
    final jsonH = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnio.json');
    final jsonI = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnioPresupuestal.json');
    final jsonJ = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnio.json');
    final jsonK = await DefaultAssetBundle.of(context).loadString('assets/porGeneroAnioPresupuestal.json');
    //final jsonResult = json.decode(jsonA);
    //for (var record in _records.entry) {
    //print('${entry.key}: ${entry.value}'):}
    return {
      'fileA': jsonA,
      'fileB': jsonB,
      'fileC': jsonC,
      'fileD': jsonD,
      'fileE': jsonE,
      'fileF': jsonF,
      'fileG': jsonG,
      'fileH': jsonH,
      'fileI': jsonI,
      'fileJ': jsonJ,
      'fileK': jsonK,
    };
  }


Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data["records"];
      print('objects ${_records.length}');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              background_containr(context),
              Positioned(
                top: 90,
                child: main_containr(),
              )
            ]
        ),
      ),
    );
  }


  Container main_containr() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        color: Color(0xfff4f4f4),
      ),
      height: MediaQuery.of(context).size.height-180,
      width: MediaQuery.of(context).size.width-40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _records.isNotEmpty ? Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(9.0),
              itemCount: _records.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color(0xF8E4E4E4),
                  margin: const EdgeInsets.all(10),
                  child:Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        //Records.map<Widget>((index)=> Column [
                        //Text((_records[index]['estado'] != null) ? _records['estado'] : 'estado',
                        Text((_records[index]['estado']),
                          style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        //).toList(),
                        Text(_records[index]["cve_edo"]),
                        Text('Clave'),
                        Text(_records[index]["mujeres"]),
                        Text("mujeres"),
                        Text(_records[index]["hombres"]),
                        Text("hombres"),
                        Text(_records[index]["anio_presupuestal"]),
                        Text("año presupuestal"),
                      ],
                    ),
                  ),
                );

              },
            ),
          )
      : Expanded( child: ListView.builder(
            itemCount: _itemsBtn.length,
            itemBuilder: (context, index) {
              final item = _itemsBtn[index];
              return ListTile(
                contentPadding: EdgeInsets.only(top: 11, left: 17, right: 17,),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        //fixedSize: const Size(390, 37),
                        minimumSize: Size.fromHeight(42),
                        backgroundColor: Color(0xFFBC955C),
                      ),
                      child: Text('${item}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,),
                      ),
                      onPressed: () {
                        readJson();
                        },
                    )
                  ],
                ),
              );
            },
          ),),
        ],
      ),
    );
  }

  Column background_containr(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: Color(0xff10312b),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),*/
                    Text(
                      'Consulta histórica',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
/*
                    Icon(
                      Icons.download_rounded,
                      color: Colors.white,
                    )
*/
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}