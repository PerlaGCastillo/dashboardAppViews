import 'package:data/Screens/dashboard/components/acumulada.dart';
import 'package:data/Screens/dashboard/components/my_fields.dart';
import 'package:flutter/material.dart';

class Historical extends StatefulWidget {

  @override
  State<Historical> createState() => _HistoricalState();
}

class _HistoricalState extends State<Historical> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                top: 90,
                child: historical(),
              ),
            ]
        ),
      ),
    );
  }

  Container historical() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        color: Color(0xfff4f4f4),
      ),
      height: MediaQuery
          .of(context)
          .size
          .height - 90,
      width: MediaQuery
          .of(context)
          .size
          .width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
          child: Acumulado(),
      ),
        ],
      ),
    );
  }
}