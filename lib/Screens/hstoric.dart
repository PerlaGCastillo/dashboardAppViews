import 'package:data/Screens/dashboard/babien_chart.dart';
import 'package:data/Screens/dashboard/components/acumulado.dart';
import 'package:data/Screens/dashboard/components/babien_details.dart';
import 'package:data/Screens/dashboard/components/beneficiarios_historico.dart';
import 'package:data/Screens/dashboard/components/info_details.dart';
import 'package:flutter/material.dart';

class hstoric extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hstoricl(),
    );
  }

Widget hstoricl() {
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
                      SizedBox(height: 20.0),
                      BabienDetails(),
                      SizedBox(height: 20.0),
                      InfoDetails(),
                      SizedBox(height: 20.0),
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