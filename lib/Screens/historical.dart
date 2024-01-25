import 'package:data/Screens/dashboard/components/acEgresados_details.dart';
import 'package:data/Screens/dashboard/components/acumulados_details.dart';
import 'package:data/Screens/dashboard/components/centrosB_details.dart';
import 'package:data/Screens/dashboard/components/vinculadosC_details.dart';
import 'package:data/Screens/dashboard/components/generoE_details.dart';
import 'package:data/Screens/dashboard/components/edadG_details.dart';

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
                      SizedBox(height: 20.0),
                      AcumuladoDetails(),
                      SizedBox(height: 20.0),
                      AcEgresadosDetails(),
                      SizedBox(height: 20.0),
                      CentrosBDetails(),
                      SizedBox(height: 20.0),
                      VinculadosCDetails(),
                      SizedBox(height: 20.0),
                      GeneroEDetails(),
                      SizedBox(height: 20.0),
                      EdadGDetails(),
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