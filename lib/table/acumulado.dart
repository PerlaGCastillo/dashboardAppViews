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
  static String jsonSampleAcumulado = '[{"_id":"6553b3b8dabd587d7f4b2303","index":0,"guid":"991b49dd-171c-4618-9df4-da2208ee32bd","isActive":false,"balance":"$3,850.22","picture":"http://placehold.it/32x32","age":35,"eyeColor":"brown","name":"Isabelle Lester","gender":"female","company":"SYNTAC","email":"isabellelester@syntac.com","phone":"+1 (910) 417-2147","address":"890 Polar Street, Sugartown, Kentucky, 9163","about":"Aliquip reprehenderit occaecat dolore aliquip. Quis sint minim id ut tempor quis incididunt reprehenderit nulla excepteur adipisicing eu. Dolore officia nostrud aute officia ad enim. Laboris velit anim laborum et cupidatat anim aliquip do id. Consequat eu fugiat exercitation minim do proident. Duis non minim eu laborum ex ipsum laboris consectetur proident laborum. Qui fugiat excepteur est laborum laborum Lorem officia consequat nulla veniam occaecat.\r\n","registered":"2015-05-20T12:55:26 +05:00","latitude":47.245466,"longitude":54.590177,"tags":["Lorem","magna","occaecat","ut","excepteur","exercitation","veniam"],"friends":[{"id":0,"name":"Simone Hanson"},{"id":1,"name":"Jenny Herman"},{"id":2,"name":"Hewitt Willis"}],"greeting":"Hello, Isabelle Lester! You have 2 unread messages.","favoriteFruit":"apple"},{"_id":"6553b3b827fad67b1f1cef79","index":1,"guid":"b19baca9-b3f9-4265-9752-6f544daf40e0","isActive":true,"balance":"$1,747.31","picture":"http://placehold.it/32x32","age":28,"eyeColor":"blue","name":"Erika Wilkerson","gender":"female","company":"ORONOKO","email":"erikawilkerson@oronoko.com","phone":"+1 (848) 416-2070","address":"352 Pioneer Street, Reno, New Hampshire, 1985","about":"Reprehenderit consequat eiusmod reprehenderit aute laborum laborum quis veniam amet. Aliquip aliquip sunt qui do quis mollit. Minim laborum consequat irure ad sint est. Ea dolore Lorem eiusmod enim id dolor ea.\r\n","registered":"2014-10-29T02:47:43 +06:00","latitude":70.631278,"longitude":-109.950341,"tags":["non","veniam","qui","do","quis","dolor","nostrud"],"friends":[{"id":0,"name":"Hurst Harrison"},{"id":1,"name":"Ramos Noel"},{"id":2,"name":"Lorie Collins"}],"greeting":"Hello, Erika Wilkerson! You have 7 unread messages.","favoriteFruit":"apple"},{"_id":"6553b3b876611e38787e9393","index":2,"guid":"c6434d09-ca37-4823-9298-84011102d939","isActive":true,"balance":"$3,433.01","picture":"http://placehold.it/32x32","age":35,"eyeColor":"green","name":"Stacey Farley","gender":"female","company":"PIVITOL","email":"staceyfarley@pivitol.com","phone":"+1 (810) 510-2522","address":"258 Melba Court, Echo, Massachusetts, 7257","about":"Incididunt est deserunt incididunt enim commodo nulla deserunt cupidatat aute. Voluptate reprehenderit eu minim exercitation consectetur nisi eu esse nisi aliqua. Laborum culpa aliquip elit non mollit laborum proident eiusmod adipisicing. Sit dolor ad veniam laboris deserunt.\r\n","registered":"2019-11-30T02:30:53 +06:00","latitude":22.484337,"longitude":76.258707,"tags":["consequat","anim","id","deserunt","est","veniam","proident"],"friends":[{"id":0,"name":"Carissa Miller"},{"id":1,"name":"Ladonna Ballard"},{"id":2,"name":"Lynnette Valentine"}],"greeting":"Hello, Stacey Farley! You have 6 unread messages.","favoriteFruit":"banana"},{"_id":"6553b3b8f9ecbd60c77bb920","index":3,"guid":"5bc93a87-a851-48d0-a7ff-bb7b2eb86efd","isActive":true,"balance":"$2,988.63","picture":"http://placehold.it/32x32","age":33,"eyeColor":"blue","name":"Cheryl Cain","gender":"female","company":"INTRAWEAR","email":"cherylcain@intrawear.com","phone":"+1 (932) 439-2013","address":"250 Stockton Street, Homeworth, Virgin Islands, 6357","about":"Consequat irure duis aute voluptate non ex sunt eu Lorem tempor aliquip. In nisi aute velit tempor ea. Fugiat laborum culpa Lorem ut sit aute minim. Qui voluptate ut duis nisi dolor cillum. Ut est labore Lorem irure nostrud laborum amet sunt velit sit laboris adipisicing. Aute elit proident nisi exercitation nisi nulla officia exercitation ea ex qui aliquip.\r\n","registered":"2020-04-19T11:06:55 +05:00","latitude":6.881651,"longitude":-176.556864,"tags":["eu","ea","nulla","quis","eiusmod","id","mollit"],"friends":[{"id":0,"name":"Cherry Weber"},{"id":1,"name":"Corine Robbins"},{"id":2,"name":"Abbott Turner"}],"greeting":"Hello, Cheryl Cain! You have 5 unread messages.","favoriteFruit":"banana"},{"_id":"6553b3b81beb03f231bddd9a","index":4,"guid":"08b09eeb-d482-4b75-a4fb-e99105f61942","isActive":true,"balance":"$2,420.21","picture":"http://placehold.it/32x32","age":39,"eyeColor":"blue","name":"Jeannie Taylor","gender":"female","company":"BESTO","email":"jeannietaylor@besto.com","phone":"+1 (976) 529-3274","address":"694 Guernsey Street, Takilma, Puerto Rico, 7040","about":"Anim irure dolore sunt sint amet quis eu ut dolore nostrud. Pariatur esse consequat ut aliqua deserunt aute elit excepteur. Magna excepteur eiusmod irure duis id nulla pariatur pariatur laboris nisi exercitation. Dolore ad aute ex veniam irure amet officia. Adipisicing non consectetur dolor excepteur aliquip velit.\r\n","registered":"2022-12-02T08:15:09 +06:00","latitude":-10.572764,"longitude":-14.542794,"tags":["eiusmod","cupidatat","aliqua","irure","incididunt","esse","cupidatat"],"friends":[{"id":0,"name":"Nichole Rice"},{"id":1,"name":"Lenora Merritt"},{"id":2,"name":"Hickman Underwood"}],"greeting":"Hello, Jeannie Taylor! You have 10 unread messages.","favoriteFruit":"apple"},{"_id":"6553b3b80b2937609c3e6cc3","index":5,"guid":"b08ff1bd-9bd2-409c-967d-ac723abbe4b1","isActive":true,"balance":"$3,413.99","picture":"http://placehold.it/32x32","age":40,"eyeColor":"blue","name":"Holmes Lindsey","gender":"male","company":"ZENTHALL","email":"holmeslindsey@zenthall.com","phone":"+1 (856) 597-2130","address":"424 Bleecker Street, Roderfield, West Virginia, 2193","about":"Consequat est quis incididunt dolor sit nostrud fugiat. Voluptate consequat irure tempor mollit non laboris nisi. Commodo eiusmod deserunt anim velit duis eu officia.\r\n","registered":"2022-10-29T10:18:00 +05:00","latitude":-89.216268,"longitude":-155.448115,"tags":["enim","pariatur","sit","aliquip","duis","ut","elit"],"friends":[{"id":0,"name":"Julia Gentry"},{"id":1,"name":"Sheryl Savage"},{"id":2,"name":"Riley Hood"}],"greeting":"Hello, Holmes Lindsey! You have 2 unread messages.","favoriteFruit":"banana"},{"_id":"6553b3b8939a8eec085879f1","index":6,"guid":"24fc8df2-cf55-41b3-9b29-6a05b7298003","isActive":false,"balance":"$1,858.44","picture":"http://placehold.it/32x32","age":38,"eyeColor":"brown","name":"Tracie Yang","gender":"female","company":"ZEPITOPE","email":"tracieyang@zepitope.com","phone":"+1 (850) 527-3866","address":"873 Boardwalk , Russellville, Arizona, 6515","about":"Voluptate fugiat nisi nisi excepteur cillum pariatur nostrud exercitation velit. Duis nostrud eu aute cupidatat ex ut nostrud. Cupidatat in mollit eiusmod ea tempor duis aute dolore tempor.\r\n","registered":"2015-04-09T06:08:29 +05:00","latitude":-40.527974,"longitude":71.272835,"tags":["do","veniam","reprehenderit","est","aliquip","officia","amet"],"friends":[{"id":0,"name":"Mcbride Cook"},{"id":1,"name":"Shana Manning"},{"id":2,"name":"Sharron Clemons"}],"greeting":"Hello, Tracie Yang! You have 7 unread messages.","favoriteFruit":"banana"}]';
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