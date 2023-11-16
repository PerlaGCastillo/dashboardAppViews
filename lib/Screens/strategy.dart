import 'package:flutter/material.dart';

class Strategy extends StatefulWidget {
  //const Strategy({super.key, required this.title});
  //final String title;
  @override
  State<Strategy> createState() => _StrategyState();
}

class _StrategyState extends State<Strategy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text("Estrategias Especiales",
                        textAlign: TextAlign.center,
                        style: TextStyle(color:Color(0xff691c32), fontSize: 28.0)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _boton("Colonias", " 500"),
                  _boton("Istmo Tehuantepec", "IT")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _boton("Pueblos WIXÁRIKA", "WX"),
                  _boton("Pueblo Yaqui", "YA")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_boton("Tren Maya", "TM"),
                  _boton("Marginación", "MA")],
              ),

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
      width: 176,
      height: 180,
      child: Card(
          margin: const EdgeInsets.all(20),
          color: Color(0xff691c32),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                acronimo,
                style: const TextStyle(color: Color(0xfff4f4f4), fontSize: 27.0),
              ),
              Text(
                nombre,
                style: const TextStyle( color: Color(0xfff4f4f4)),
              )
            ],
          )),
    ),
    onTap: () {
      print("ok");
    },
  );
}