import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:dgapd/data/model/add_date.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var history;
  final box = Hive.box<Add_data>('data');
  String? selctedItem;
  String? selctedItemi;
  String? selctedItemdespliega;
  String? currentItem = " ";


  final List<String> _itemdespliega = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Consulta histórica",
        ),
      ),
      body: SafeArea(
        child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                top: 90,
                child: consultahistorica(),
              )
            ]
        ),
      ),

    );
  }


  Padding consultahistorica() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width-50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selctedItem,
          onChanged: ((value) {
            setState(() {
              selctedItem = value!;
            });
          }),
          items: _itemdespliega
              .map((e) => DropdownMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    e,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            value: e,
          ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _itemdespliega
              .map((e) => Row(
            children: [
              Text(e)
            ],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Consulta Histórica',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Color(0xfff4f4f4),

          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }
  }
