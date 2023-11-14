import 'package:data/table/generoanio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyList());
}

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AllAboutFlutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 32),
          bodyText2: TextStyle(fontSize: 32),
          subtitle1: TextStyle(fontSize: 32),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const DropdownListTutorial(),
    );
  }
}

class DropdownListTutorial extends StatefulWidget {
  const DropdownListTutorial({Key? key}) : super(key: key);

  @override
  _DropdownListTutorialState createState() => _DropdownListTutorialState();
}


/*
class _DPWidgetState extends State < DPWidget > {
  String dropdownValue = '1';
  @override
  Widget build(BuildContext context) {
    return DropdownButton < String > (
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: < String > ['1', '2', '3']
          .map < DropdownMenuItem < String >> ((String value) {
        return DropdownMenuItem < String > (
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

*/
class _DropdownListTutorialState extends State<DropdownListTutorial> {
  List<String> items = [ "Por género, por año",'Acumulado', "Por género, por edad", "Por mes pagado", "Por grupos vulnerables","Centros con beneficiarios","Por entidad", "Por área de interés", "Por escolaridad", "Vinculados en capacitación", "Por municipio", "Por sector"];
  String currentItem = "";
/*
  List<String> list = ['one', 'two', 'three'];
  final string = list.reduce((value, element) => value + ',' + element);

// For your example:
  List<String> servicesList = await SharedPrefSignUp.getSelectedServices();
  selectServicesText = servicesList.reduce((value, element) => value + ',' + element);*/

  /*void main() {
    // an arbitrary object that is not type String
    final book2 = Object();
    List books = ['book1', book2];
    print(getTextElement(books)); // book1
  }

  String? getTextElement(List list) {
    return list.firstWhere((e) => e is String);
  }*/
  @override
  void initState() {
    currentItem = items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown List Tutorial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
              //  color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                alignment: Alignment.topCenter,
                borderRadius: BorderRadius.circular(8),
                //dropdownColor: Colors.blueAccent,
                value: currentItem,
                items: items
                    .map<DropdownMenuItem<String>>(
                      (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                    alignment: Alignment.center,
                  ),
                )
                    .toList(),
                onChanged: (String? value) => setState(
                      () {
                    if (value != null) currentItem = value;
                  },
                ),
              ),
            ),
            Text(currentItem),
          ],
        ),
      ),
    );
  }
}