import 'package:data/Screens/dashboard/components/mesP_details.dart';
import 'package:data/Screens/dashboard/components/numeroP_details.dart';
import 'package:data/Screens/dashboard/components/areaI_details.dart';
import 'package:data/Screens/dashboard/components/sectorP_details.dart';
import 'package:data/Screens/dashboard/components/escolaridadP_details.dart';
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
                      MesPDetails(),
                      SizedBox(height: 20.0),
                      NumeroPDetails(),
                      SizedBox(height: 20.0),
                      AreaIDetails(),
                      SizedBox(height: 20.0),
                      SectorPDetails(),
                      SizedBox(height: 20.0),
                      EscolaridadPDetails(),
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