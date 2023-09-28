import 'package:flutter/material.dart';
import 'package:dgapd/Screens/profile.dart';
import 'package:dgapd/Screens/search.dart';
import 'package:dgapd/Screens/home.dart';
import 'package:dgapd/Screens/statistics.dart';
import 'package:dgapd/Screens/inquiryBtn.dart';
import 'package:dgapd/Screens/entityList.dart';
//import 'package:dgapd/Screens\login.dart/';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List Screen = [Home(), BtnList() , EntityList(), ProfileScreen()];

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
                  Icons.table_chart,
                  size: 30,
                  color: index_color == 1 ? Color(0xffbc955c) : Colors.grey,
                ),
              ),
             SizedBox(width: 17),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 2;
                  });
                },
                child: Icon(
                  Icons.pie_chart,
                  size: 30,
                  color: index_color == 2 ? Color(0xffbc955c) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 3;
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
