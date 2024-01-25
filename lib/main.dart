import 'package:animated_splash/animated_splash.dart';
import 'package:data/Screens/displayData.dart';
import 'package:data/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

void main() {
  Function duringSplash = () {
    print('it works!');
    int a = 123 + 123;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };
  Map<int, Widget> op = {1: MyApp(), 2: displayData()};

  final bool debugShowCheckedModeBanner;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplash(
      imagePath: 'assets/images/logo.png',
      home: Bottom(),
      customFunction: duringSplash,
      duration: 1600,
      type: AnimatedSplashType.BackgroundProcess,
      outputAndHome: op,
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
