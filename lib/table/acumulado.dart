import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Acumulado extends StatefulWidget {
  const Acumulado({super.key});

  @override
  State<Acumulado> createState() => _AcumuladoState();
}

class _AcumuladoState extends State<Acumulado> {
  static String jsonSampleAcumulado = '[{"_id":"6553bb14ef396e9e2ab359e3","index":0,"guid":"9ce1c3d4-a138-4c14-9ab7-75d4fd108b55","isActive":true,"balance":"3,947.36","age":31,"eyeColor":"blue","name":"Stone Durham","gender":"male","company":"KONGLE","email":"stonedurham@kongle.com","phone":"+1 (954) 540-2250","address":"661 Berry Street, Tecolotito, North Dakota, 1444","about":"Aliqua laboris sint labore minim proident. Sunt labore elit reprehenderit exercitation ullamco voluptate veniam eu et non quis ea. Est occaecat mollit non voluptate et. Aliquip aliquip nostrud esse est eiusmod velit voluptate tempor eiusmod eu. Exercitation aute excepteur proident ea cupidatat sunt velit dolor aute. Sit culpa consequat eu eiusmod ex amet culpa ut in sint nisi consequat officia. Fugiat aute ad mollit reprehenderit ullamco est do veniam.\r\n","registered":"2020-01-01T04:39:27 +06:00","latitude":41.77951,"longitude":142.265961,"tags":["ullamco","minim","id","dolor","nisi","ut","eu"],"friends":[{"id":0,"name":"Trudy Keller"},{"id":1,"name":"Burt Frye"},{"id":2,"name":"Marcia Dotson"}],"greeting":"Hello, Stone Durham! You have 9 unread messages.","favoriteFruit":"strawberry"},{"_id":"6553bb147d2998c5bac6f49f","index":1,"guid":"ede63546-2dfa-45d1-a23e-fcea954489bc","isActive":false,"balance":"3,421.92","age":36,"eyeColor":"blue","name":"Wells Oconnor","gender":"male","company":"KOZGENE","email":"wellsoconnor@kozgene.com","phone":"+1 (814) 414-2986","address":"369 Euclid Avenue, Mulberry, Mississippi, 4283","about":"Voluptate do ex tempor proident enim et officia eiusmod consequat exercitation aute irure eiusmod. Officia laborum mollit tempor occaecat proident cupidatat ut magna velit sit. Dolore irure eu dolor quis. Elit ea culpa enim occaecat commodo ea sunt aute esse eiusmod sit proident fugiat reprehenderit. Laborum ullamco proident et deserunt et et ea reprehenderit. Commodo dolore ad amet velit amet. Aliquip minim est nulla laborum ex dolor.\r\n","registered":"2016-05-24T05:28:36 +05:00","latitude":26.74372,"longitude":121.415386,"tags":["eu","minim","eiusmod","adipisicing","exercitation","ea","aliqua"],"friends":[{"id":0,"name":"Carol Tyson"},{"id":1,"name":"Sarah Mcclure"},{"id":2,"name":"Mccarty Robles"}],"greeting":"Hello, Wells Oconnor! You have 2 unread messages.","favoriteFruit":"apple"},{"_id":"6553bb142e18af6f8fbc69bd","index":2,"guid":"081db518-38e7-4ba2-8cb3-e8222dd51817","isActive":true,"balance":"2,068.45","age":30,"eyeColor":"green","name":"Cardenas Webb","gender":"male","company":"ZIDOX","email":"cardenaswebb@zidox.com","phone":"+1 (892) 416-3259","address":"403 Beekman Place, Westwood, Massachusetts, 8226","about":"Elit duis exercitation in amet incididunt consectetur elit mollit ipsum anim fugiat aliqua aliqua velit. Proident ad sunt incididunt laborum quis ex. Adipisicing cupidatat laboris duis ex qui sit ad do. Quis nisi sint laboris qui dolore culpa quis non non labore incididunt. Excepteur Lorem tempor laborum laboris reprehenderit consectetur magna ut. Incididunt sunt irure irure consequat cillum cupidatat dolor ad enim veniam.\r\n","registered":"2023-09-21T02:10:12 +06:00","latitude":18.700217,"longitude":170.994727,"tags":["anim","ad","sit","Lorem","culpa","commodo","exercitation"],"friends":[{"id":0,"name":"Guerrero Grant"},{"id":1,"name":"Tracy Noel"},{"id":2,"name":"Cohen Martinez"}],"greeting":"Hello, Cardenas Webb! You have 6 unread messages.","favoriteFruit":"banana"},{"_id":"6553bb146ce6d607773f9133","index":3,"guid":"fb27c06e-195c-4b79-a23a-efa39078db21","isActive":true,"balance":"1,507.71","age":27,"eyeColor":"brown","name":"Margret Hampton","gender":"female","company":"EURON","email":"margrethampton@euron.com","phone":"+1 (958) 457-3386","address":"648 Thatford Avenue, Edneyville, Louisiana, 6873","about":"Amet commodo ex fugiat magna nisi minim qui adipisicing deserunt eu ex sunt. Deserunt consequat eu excepteur cupidatat pariatur. Do Lorem deserunt ex dolore non. Pariatur non eiusmod officia do ullamco magna nisi enim ut cupidatat amet mollit proident sit.\r\n","registered":"2016-12-06T06:44:55 +06:00","latitude":55.164822,"longitude":-133.594171,"tags":["ipsum","commodo","dolore","ipsum","proident","sint","tempor"],"friends":[{"id":0,"name":"Lawanda Wilcox"},{"id":1,"name":"Jacobs Robertson"},{"id":2,"name":"Rita Galloway"}],"greeting":"Hello, Margret Hampton! You have 3 unread messages.","favoriteFruit":"banana"},{"_id":"6553bb14d7b74e37dd9af3dc","index":4,"guid":"c1218798-d9c1-409f-93ca-f623cc46e3c9","isActive":false,"balance":"1,416.45","age":22,"eyeColor":"brown","name":"Lawrence Rutledge","gender":"male","company":"ANACHO","email":"lawrencerutledge@anacho.com","phone":"+1 (898) 555-3523","address":"414 Richmond Street, Smeltertown, Missouri, 5883","about":"Aliquip dolore tempor labore pariatur enim excepteur proident labore veniam adipisicing pariatur et nostrud culpa. Labore ullamco nostrud aliquip sint consectetur. Aliquip sunt minim incididunt enim. Veniam commodo aliquip duis dolore. Amet labore sunt nostrud occaecat pariatur magna labore eu ea ex.\r\n","registered":"2017-07-03T04:05:39 +05:00","latitude":-47.324629,"longitude":141.163778,"tags":["consectetur","minim","id","laborum","qui","dolor","est"],"friends":[{"id":0,"name":"Aisha Joyner"},{"id":1,"name":"Tamera Stark"},{"id":2,"name":"Kellie Kent"}],"greeting":"Hello, Lawrence Rutledge! You have 9 unread messages.","favoriteFruit":"banana"},{"_id":"6553bb14c8b67b066fd1e6a6","index":5,"guid":"6af6c77b-6b0a-4ec3-a848-56a165a785d8","isActive":true,"balance":"2,752.12","age":27,"eyeColor":"brown","name":"Jeanie Copeland","gender":"female","company":"ANOCHA","email":"jeaniecopeland@anocha.com","phone":"+1 (805) 542-3490","address":"102 Java Street, Lindcove, California, 8401","about":"In aliquip dolor nulla in ut nisi cillum aute sit. Do ut ea minim sint duis incididunt. Sit tempor mollit excepteur pariatur ex et sint quis minim proident amet Lorem magna et.\r\n","registered":"2017-08-13T06:41:44 +05:00","latitude":5.316599,"longitude":95.835911,"tags":["elit","cillum","est","excepteur","velit","cillum","velit"],"friends":[{"id":0,"name":"Jodie Larson"},{"id":1,"name":"Anthony Knight"},{"id":2,"name":"Candace Conley"}],"greeting":"Hello, Jeanie Copeland! You have 8 unread messages.","favoriteFruit":"strawberry"}]';
  bool toggle = true;
  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSampleAcumulado),
  );

  final _subjct = BehaviorSubject<String>();

  @override
  void initState(){
    super.initState();
    _subjct.add(_controller.text);
    _controller.addListener(() {
      _subjct.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Acumulado",
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 16,
            ),
            StreamBuilder<List?>(
                stream: _getStream(),
                builder: (context, snapshot) {
                  return Expanded(
                    child: snapshot.hasData && snapshot.data != null
                        ? Card(
                      elevation: 0,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(16.0),
                        child: JsonTable(
                          snapshot.data!,
                          showColumnToggle: true,
                          allowRowHighlight: true,
                          rowHighlightColor:
                          Colors.grey[500]!.withOpacity(0.7),
                          paginationRowCount: 20,
                          onRowSelect: (index, map) {
                            print(index);
                            print(map);
                          },
                        ),
                      ),
                    )
                        : Center(
                      child: Text(
                        "agrega el formato JSON adecuado",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
  String getPrettyJSONString(String jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }

  Stream<List?> _getStream() {
    return _subjct.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _subjct.close();
    _controller.dispose();
    super.dispose();
  }
}