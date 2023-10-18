import 'package:flutter/material.dart';
import 'package:dgapd/data/model/add_date.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final box = Hive.box<Add_data>('data');
  //DateTimeRange date = new DateTimeRange.from;
  DateTime date = new DateTime.now();
  String? selctedItem;
  String? selctedItemi;
  String? selctedItembeneficia;
  String? selctedItementidad;
  String? selctedItemsectores;
  String? selctedItemaprendiz;
  String? selctedItemempresa;
  String? selctedItemgenero;
  String? selctedItemedad;
   //final TextEditingController amount_c = TextEditingController();
  //FocusNode amount_ = FocusNode();
  final List<String> _itembeneficia = [
    "Beneficiarios",
    "Egresados"
  ];

  final List<String> _itementidad = [
    'Guerrero',
    "Oaxaca",
    'CDMX'
  ];
  final List<String> _itemsectores = [
    'Público',
    "Privado",
  ];

  final List<String> _itemaprendiz = [
    'Hombre',
    "Mujer",
  ];

  final List<String> _itemempresa = [
    'Instituciones públicas estatales',
    "Instituciones privadas",
  ];

  final List<String> _itemgenero = [
    'Hombre',
    "Mujer",
  ];

  final List<String> _itemedad = [
    '18',
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29"
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
          beneficiarios(),
          SizedBox(height: 25),
          date_time(),
          SizedBox(height: 25),
          entidad(),
          SizedBox(height: 25),
          sectores(),
          SizedBox(height: 25),
          aprendices(),
          SizedBox(height: 25),
          empresa(),
          SizedBox(height: 25),
          genero(),
          SizedBox(height: 25),
          edad(),
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
        var add = Add_data( selctedItembeneficia! , date,
            selctedItementidad!, selctedItemsectores!, selctedItemaprendiz!,
            selctedItemempresa!, selctedItemgenero!, selctedItemedad!
        );
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

  Padding edad() {
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
          items: _itemedad
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
          selectedItemBuilder: (BuildContext context) => _itemedad
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Edad:',
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

  Padding genero() {
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
          items: _itemgenero
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
          selectedItemBuilder: (BuildContext context) => _itemgenero
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Género:',
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

  Padding empresa() {
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
          items: _itemempresa
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
          selectedItemBuilder: (BuildContext context) => _itemempresa
          // selectedItemBuilder: (BuildContext context) => _itemei
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Tipo de Empresa:',
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

  Padding aprendices() {
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
          items: _itemaprendiz
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
          selectedItemBuilder: (BuildContext context) => _itemaprendiz
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Aprendices:',
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

  Padding sectores() {
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
          items: _itemsectores
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
          selectedItemBuilder: (BuildContext context) => _itemsectores
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              ' Sectores:',
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

  Padding entidad() {
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
          items:  _itementidad
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
          selectedItemBuilder: (BuildContext context) => _itementidad
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Selecciona una entidad:',
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

  Widget date_time() {
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 2, color: Color(0xffC5C5C5))),
      width: MediaQuery.of(context).size.width*0.9,
      height:50,
      child: TextButton(
        onPressed: () async {
          DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime(2018),
              lastDate: DateTime(2032));
          if (newDate == Null) return;
          setState(() {
            date = newDate!;
          });

          /*
          * DateTime startDate = new DateTime(2020, 3, 2);
            DateTime endDate = new DateTime(2020, 3, 10);
            List<DateTime> days = [];
            DateTime tmp = DateTime(startDate.year, startDate.month, startDate.day, 12);
            while(DateTime(tmp.year, tmp.month, tmp.day) != endDate){
              days.add(DateTime(tmp.year, tmp.month, tmp.day));
              tmp = tmp.add(new Duration(days: 1));
            }
          * */
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom:12.0, left: 8.0),
          child: Text(
            'Período : ${date.year} / ${date.day} / ${date.month}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Padding beneficiarios() {
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
          items: _itembeneficia
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
          selectedItemBuilder: (BuildContext context) => _itembeneficia
              .map((e) => Row(
                    children: [
                      Text(e)
                    ],
                  ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Beneficiarios o Egresados:',
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
