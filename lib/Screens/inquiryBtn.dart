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
        itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Concepto $index'),
            /*leading: Hero(
              tag: index,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.network(_images[index],
                    width: 100, fit: BoxFit.cover),
              ),
            ),*/
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
          /*Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: Image.network(_images[heroTag]),
              ),
            ),
          ),*/
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

final List<String> _images = [
  'https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/273935/pexels-photo-273935.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1591373/pexels-photo-1591373.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/462024/pexels-photo-462024.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
];
