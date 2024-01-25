import 'package:data/Screens/dashboard/components/colonias_details.dart';
import 'package:data/Screens/dashboard/components/discapacidadR_details.dart';
import 'package:data/Screens/dashboard/components/istmo_details.dart';
import 'package:data/Screens/dashboard/components/pueblos_details.dart';
import 'package:data/Screens/dashboard/components/tren_details.dart';
import 'package:data/Screens/dashboard/components/yaqui_details.dart';
import 'package:data/Screens/dashboard/components/grupoV_details.dart';
import 'package:flutter/material.dart';

class estrategias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: estrategiasWdgt(),
    );
  }

Widget estrategiasWdgt() {
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
                      GrupoVDetails(),
                      SizedBox(height: 20.0),
                      DiscapacidadRDetails(),
                      SizedBox(height: 20.0),
                      ColoniasDetails(),
                      SizedBox(height: 20.0),
                      PueblosDetails(),
                      SizedBox(height: 20.0),
                      IstmoDetails(),
                      SizedBox(height: 20.0),
                      YaquisDetails(),
                      SizedBox(height: 20.0),
                      TrenMayaDetails(),
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