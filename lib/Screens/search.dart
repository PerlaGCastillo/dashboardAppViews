import 'package:flutter/material.dart';
import 'package:data/data/model/add_date.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final box = Hive.box<Add_data>('data');
  //DateTimeRange date = new DateTimeRange.from;
  //DateTime date = new DateTime.now();
  String? selctedItem;
  String? selctedItemi;
  String? selctedItemconcepto;
  String? selctedItemcantidad;
  String? selctedItemarchivo;
   //final TextEditingController amount_c = TextEditingController();
  //FocusNode amount_ = FocusNode();

  final List<String> _itemconcepto = [
    'Total de beneficiarios histórico 01/01/2019 - 31/12/2022',
    "Total de beneficarios hombres 01/01/2019 - 31/12/2022",
    "Total de beneficarias mujeres 01/01/2019 - 31/12/2022",
    "Total de Inversión apoyo económico 2019",
    "Total de Inversión apoyo económico 2020",
    "Total de Inversión apoyo económico 2021",
    "Total de Inversión apoyo económico 2022",
    "Total de Inversión apoyo económico 2019 - 2022",
    "Total de Inversión IMSS 2019",
    "Total de Inversión IMSS 2020",
    "Total de Inversión IMSS 2021",
    "Total de Inversión IMSS 2022",
    "Total de Inversión IMSS (en el período del reporte) 01/01/2019 - 31/12/2022",

  ];

  final List<String> _itemcantidad = [
    '\$',
    "Personas",
  ];

  final List<String> _itemarchivo = [
    'Total de beneficiarios histórico 01/01/2019 - 31/12/2022',
    "Total de beneficarios hombres 01/01/2019 - 31/12/2022",
    "Total de beneficarias mujeres 01/01/2019 - 31/12/2022",
    "Total de Inversión apoyo económico 2019",
    "Total de Inversión apoyo económico 2020",
    "Total de Inversión apoyo económico 2021",
    "Total de Inversión apoyo económico 2022",
    "Total de Inversión apoyo económico 2019 - 2022",
    "Total de Inversión IMSS 2019",
    "Total de Inversión IMSS 2020",
    "Total de Inversión IMSS 2021",
    "Total de Inversión IMSS 2022",
    "Total de Inversión IMSS (en el periodo del reporte) 01/01/2019 - 31/12/2022",
  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //amount_.addListener(() {
     // setState(() {});
   // });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            background_container(context),
            Positioned(
              top: 90,
              child: main_container(),
            ),
          ],
        ),
      ),
    );
  }

  Container main_container() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xfff4f4f4),
      ),
      height: MediaQuery.of(context).size.height*0.83,
      width: MediaQuery.of(context).size.width-50,

      child: Column(
        children: [
          SizedBox(height: 25),
          concepto(),
          SizedBox(height: 25),
          cantidad(),
          SizedBox(height: 25),
          archivo(),
          Spacer(),
          save(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
  GestureDetector save() {
    return GestureDetector(
      onTap: () {
        var add = Add_data( selctedItemconcepto!, selctedItemcantidad!, selctedItemarchivo!);
        box.add(add);
        Navigator.of(context).pop();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Color(0xffbc955c),
        ),
        height: MediaQuery.of(context).size.height*0.05,
        width: MediaQuery.of(context).size.width*0.77,
        child: Text(
          'Consultar',
          style: TextStyle(
            fontFamily: 'f',
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  Padding concepto() {
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
          value: selctedItemi,
          onChanged: ((value) {
            setState(() {
              selctedItemi = value!;
            });
          }),
          items: _itemconcepto
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
          selectedItemBuilder: (BuildContext context) => _itemconcepto
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Concepto:',
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

  Padding cantidad() {
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
          value: selctedItemi,
          onChanged: ((value) {
            setState(() {
              selctedItemi = value!;
            });
          }),
          items: _itemcantidad
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
          selectedItemBuilder: (BuildContext context) => _itemcantidad
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Cantidad:',
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

  Padding archivo() {
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
          value: selctedItemi,
          onChanged: ((value) {
            setState(() {
              selctedItemi = value!;
            });
          }),
          items: _itemarchivo
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
          selectedItemBuilder: (BuildContext context) => _itemarchivo
          // selectedItemBuilder: (BuildContext context) => _itemei
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Archivo xls:',
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

  Column background_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height/4,
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back,color: Color(0xfff4f4f4),),
                    ),
                    Text(
                      'Consulta histórica',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.download_rounded,
                      color: Colors.white,
                    )
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
