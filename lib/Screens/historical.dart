import 'package:data/Screens/dashboard/components/acumulado.dart';
import 'package:data/Screens/dashboard/components/beneficiarios_historico.dart';
import 'package:data/Screens/dashboard/components/imss_details.dart';
import 'package:data/Screens/dashboard/components/escolaridad_fields.dart';
import 'package:data/Screens/dashboard/components/nuevos.dart';
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
                      Nuevos(),
                      SizedBox(height: 20.0),
                      ImssDetails(),
                      SizedBox(height: 20.0),
                     Escolaridad(),

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