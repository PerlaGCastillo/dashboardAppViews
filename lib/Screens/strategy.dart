import 'package:flutter/material.dart';

class Strategy extends StatefulWidget {
  const Strategy({super.key, required this.title});
  final String title;
  @override
  State<Strategy> createState() => _StrategyState();
}

class _StrategyState extends State<Strategy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.indigo,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text("LENGUAJES",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 30.0)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_boton("Laravel", "[LA]"), _boton("Flutter", "[FL]")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _boton("Javascript", "[JS]"),
                  _boton("React JS", "[RE]")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_boton("PHP", "[PH]"), _boton("JAVA", "[JA]")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_boton("CSS", "[CS]"), _boton("HTML", "[HT]")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_boton("Android", "[AN]"), _boton("Json", "[JN]")],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _boton(String nombre, String acronimo) {
  return InkWell(
    child: Container(
      width: 170,
      height: 170,
      child: Card(
          margin: const EdgeInsets.all(20),
          color: Colors.lightBlue,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                acronimo,
                style: const TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              Text(
                nombre,
                style: const TextStyle(color: Colors.white),
              )
            ],
          )),
    ),
    onTap: () {
      print("ok");
    },
  );
}