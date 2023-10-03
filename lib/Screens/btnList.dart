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
            title: Text( '${item}')
        );
      },
    );
  }
}
