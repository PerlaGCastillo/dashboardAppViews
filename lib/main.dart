import 'package:dgapd/Screens/displayData.dart';
import 'package:flutter/material.dart';
import 'package:dgapd/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Screens/ok.dart';
import 'data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Color(0xff10312b),
       secondaryHeaderColor: Color(0xFFBC955C),
       colorScheme: ColorScheme.fromSeed(
         seedColor: Color(0xff10312b),
         brightness: Brightness.dark,
       ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        /*  titleLarge: GoogleFonts.oswald(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),*/
    ),),
      home: dataView(),
    );
  }
}
