import 'package:flutter/material.dart';

import 'package:data/table/colonias.dart';
import 'package:data/table/indigena.dart';
import 'package:data/table/istmo.dart';
import 'package:data/table/marginal.dart';
import 'package:data/table/trenmaya.dart';
import 'package:data/table/violencia.dart';
import 'package:data/table/wixarikas.dart';
import 'package:data/table/yaquis.dart';
import 'package:data/table/gpovulnerable.dart';

class Strategy extends StatefulWidget {
  //const Strategy({super.key, required this.title});
  //final String title;
  @override
  State<Strategy> createState() => _StrategyState();
}

class _StrategyState extends State<Strategy> {

  final List<Widget> widgets = [
    Colonias(), Istmo(), Wixarikas(), Yaquis(), Maya(), Marginal(), Violencia(), Indigena(), PorGpoVulnera(),  ];
  final List<String> _itemsBtns = [
    '500 Colonias',
    "Istmo Tehuantepec",
    "Pueblos Wixárika",
    "Pueblo Yaqui",
    "Tren Maya",
    "Marginación",
    "Índices de violencia",
    "Municipios Indígenas",
    "Discapacidad"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                top: 90,
                child: strtgy(),
              ),
            ]
        ),
      ),
    );
  }


  Container strtgy() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        color: Color(0xfff4f4f4),
      ),
      height: MediaQuery
          .of(context)
          .size
          .height - 90,
      width: MediaQuery
          .of(context)
          .size
          .width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
          child: GridView.builder(
            gridDelegate: const
          SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180, childAspectRatio: 3/1, crossAxisSpacing: 17, mainAxisSpacing: 17),
          itemCount: widgets.length,
          itemBuilder: (BuildContext ctx, index){
            final widget = widgets[index];
            final item = _itemsBtns[index];

              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 100),
                  backgroundColor: Color(0xFFBC955C),
                ),
                child: Text('${item}',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => widget),);
                },
              );
          }
      ),
      ),
        ],
      ),
    );
  }
}