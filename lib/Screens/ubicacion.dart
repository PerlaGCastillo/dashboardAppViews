import 'package:data/Screens/dashboard/components/municipio_details.dart';
import 'package:data/Screens/dashboard/components/entidadF_details.dart';
import 'package:flutter/material.dart';

class ubicacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ubicacionWdgt(),
    );
  }

Widget ubicacionWdgt() {
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
                      EntidadFDetails(),
                      SizedBox(height: 20.0),
                      MunicipioDetails(),
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