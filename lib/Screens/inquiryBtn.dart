import 'package:flutter/material.dart';

void main() {
  runApp(BtnList());
}

class BtnList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DGAPD',
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(
          primaryColor: Color(0xff10312b)
      ),
      home: BtnListPage(),
    );
  }
}

class BtnListPage extends StatelessWidget {
  const BtnListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Consulta Histórica")),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Histórico $index'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(heroTag: index)));
            },
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int heroTag;
  const SecondPage({required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Concepto Beneficiarios Histórico")),
      body: Column(
        children: [
          Expanded(
            child: Text(
              "Content goes here",
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        ],
      ),
    );
  }
}

final List<String> _historicalBtn = [
  'Acumulado',
  'Por género, por edad',
  'Por mes pagado',
  'Por grupos vulnerables',
  'Centros con beneficiarios',
  'Por entidad',
  'Por área de interés',
  'Por escolaridad',
  'Vinculados en capacitación',
  'Por municipio',
  'Por sector'
];
