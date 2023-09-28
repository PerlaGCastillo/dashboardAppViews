import 'package:flutter/material.dart';

void main() => runApp(EntityListPage());

class EntityListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json List vista de prueba',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Prueba despliegue lista con JSON'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top:32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('estado',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('cve_edo'),
                    Text('hombres'),
                    Text('mujeres'),
                    Text('id_estado'),
                    Text('año_presupuestal'),
                  ],
                ),
              ),
            );
          },
          itemCount: 50,
        )
      ),
    );
  }
}
