import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class btnList extends StatefulWidget {
  const btnList({super.key});

  @override
  State<btnList> createState() => _btnListState();
}

class _btnListState extends State<btnList> {

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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _itemsBtn.length,
      itemBuilder: (context, index) {
        final item = _itemsBtn[index];

        return ListTile(
          contentPadding: EdgeInsets.only(top:7, left: 17, right: 17,),
          title:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //SizedBox(height: 8),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 37),
                    backgroundColor: Color(0xFFBC955C),
            ),
                    child: Text( '${item}',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,),
                    ),
                    onPressed: (){}
                )
              ],
            ),
        );
      },
    );
  }
}
