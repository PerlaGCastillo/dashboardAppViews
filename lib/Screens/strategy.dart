import 'package:flutter/material.dart';

import 'package:data/table/generoanio.dart';
import 'package:data/table/mespagado.dart';
import 'package:data/table/gpovulnerable.dart';
import 'package:data/table/centrosbeneficiarios.dart';
import 'package:data/table/escolaridad.dart';
import 'package:data/table/vinculadoscapacitacion.dart';

class Strategy extends StatefulWidget {
  //const Strategy({super.key, required this.title});
  //final String title;
  @override
  State<Strategy> createState() => _StrategyState();
}

class _StrategyState extends State<Strategy> {

  final List<Widget> widgets = [
    PorGeneroAnio(),
    PorMesPagado(),
    PorGpoVulnera(),
    CentrosBenef(),
    PorEscolaridad(),
    VinculadosCapacitacion()
  ];
  final List<String> _itemsBtns = [
    '500 Colonias',
    "Istmo Tehuantepec",
    "Pueblos Wixárika",
    "Pueblo Yaqui",
    "Tren Maya",
    "Marginación"
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
              )
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
          .height - 180,
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
            maxCrossAxisExtent: 200,
      childAspectRatio: 3/2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20),
          itemCount: widgets.length,
          itemBuilder: (BuildContext ctx, index){
            final widget = widgets[index];
            final item = _itemsBtns[index];

              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //minimumSize: Size.fromHeight(100),
                  minimumSize: Size(176, 180),
                  backgroundColor: Color(0xFFBC955C),
                ),
                child: Text('${item}',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,),
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