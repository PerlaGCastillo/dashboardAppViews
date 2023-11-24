import 'package:data/Screens/constants.dart';
import 'package:data/Screens/dashboard/components/acumulado.dart';
import 'package:data/Screens/dashboard/components/beneficiarios_historico.dart';
import 'package:data/Screens/dashboard/components/chrtlines.dart';
import 'package:data/Screens/dashboard/components/my_fields.dart';
import 'package:data/table/totalBenef.dart';
import 'package:flutter/material.dart';

class Historical extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: historical(),
    );
  }

Widget historical() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(17.0),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                     //historialLineChart(),
                      SizedBox(height: 20.0),
                      Acumulado(),
                      //SizedBox(height: 320.0),
                      HistoricalChart(),
                      SizedBox(height: 20.0),
                      //Nuevase(),
                      // SizedBox(height: 20.0),
                      //Imsse(),
                      // SizedBox(height: 20.0),
                      //Escolaridade(),
                      // SizedBox(height: 20.0),
                      //AreaInteres(),
                      // SizedBox(height: 20.0),
                      //GeneroAnnio(),
                      // SizedBox(height: 20.0),
                      //GeneroEddad(),
                    ],

                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}