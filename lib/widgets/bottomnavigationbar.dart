import 'package:flutter/material.dart';
import 'package:management/Screens/profile.dart';
import 'package:management/Screens/search.dart';
import 'package:management/Screens/home.dart';
import 'package:management/Screens/statistics.dart';
import 'package:management/Screens/staticdatascreen.dart';
import 'package:management/Screens/recordsScreen.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
//  List Screen = [Home(), Statistics(), StaticDataPage(), ProfileScreen()];
  List Screen = [Home(), ListData()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Add_Screen()));
        },
        child: Icon(Icons.search),
        backgroundColor: Color(0xc3959595),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0 ? Color(0xffbc955c) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: index_color == 3 ? Color(0xffbc955c) : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
