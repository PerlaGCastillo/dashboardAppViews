import 'package:flutter/services.dart';

class displayData extends StatefulWidget {
  const displayData({super.key});

  @override
  State<displayData> createState() => _displayDataState();
}

class _displayDataState extends State<displayData> {
  
  List _records = [];
  
  Future<void> readJson() async{
    final String response = await rootBundle.loadString('assets/porGeneroAnioPresupuestal.json');
    final data = await json.decode(response);
    setState(() {
      _records = data['records'];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
