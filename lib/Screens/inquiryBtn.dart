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
      ThemeData(primaryColor: Color(0xff10312b), platform: TargetPlatform.iOS),
      home: BtnListPage(),
    );
  }
}

class BtnListPage extends StatelessWidget {
  const BtnListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DGAPD")),
      body: ListView.builder(
       // itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Concepto $index'),

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
      appBar: AppBar(title: Text("CONCEPTO BENEFICIARIOS HISTÓRICO")),
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

