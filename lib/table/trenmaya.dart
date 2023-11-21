import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Maya extends StatefulWidget {
  @override
  _MayaState createState() => _MayaState();
}

class _MayaState extends State<Maya> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Calakmul","BENEFICIARIOS":"3,528","INVERSIÓN":"\$182,985,993.96"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Calkiní","BENEFICIARIOS":"6,558","INVERSIÓN":"\$260,073,871.62"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Campeche","BENEFICIARIOS":"17,056","INVERSIÓN":"\$609,117,918.78"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Candelaria","BENEFICIARIOS":"5,050","INVERSIÓN":"\$235,888,289.46"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Carmen","BENEFICIARIOS":"7,547","INVERSIÓN":"\$261,326,725.55"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Champotón","BENEFICIARIOS":"6,158","INVERSIÓN":"\$250,533,996.82"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Escárcega","BENEFICIARIOS":"5,078","INVERSIÓN":"\$203,017,402.23"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Hecelchakán","BENEFICIARIOS":"3,934","INVERSIÓN":"\$158,276,131.00"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Hopelchén","BENEFICIARIOS":"4,207","INVERSIÓN":"\$193,338,880.58"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Campeche","MUNICIPIOS":"Tenabo","BENEFICIARIOS":"2,127","INVERSIÓN":"\$80,798,477.89"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Chiapas","MUNICIPIOS":"Palenque","BENEFICIARIOS":"5,620","INVERSIÓN":"\$286,040,034.59"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Chiapas","MUNICIPIOS":"Salto de Agua","BENEFICIARIOS":"1,560","INVERSIÓN":"\$80,811,434.81"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Chiapas","MUNICIPIOS":"Tumbalá","BENEFICIARIOS":"1,622","INVERSIÓN":"\$68,132,411.20"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Quintana Roo","MUNICIPIOS":"Bacalar","BENEFICIARIOS":"1,584","INVERSIÓN":"\$71,617,172.39"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Quintana Roo","MUNICIPIOS":"Felipe Carrillo Puerto","BENEFICIARIOS":"4,953","INVERSIÓN":"\$206,648,413.21"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Quintana Roo","MUNICIPIOS":"Lázaro Cárdenas","BENEFICIARIOS":"1,264","INVERSIÓN":"\$54,642,334.95"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Quintana Roo","MUNICIPIOS":"Othón P. Blanco","BENEFICIARIOS":"14,161","INVERSIÓN":"\$515,762,791.40"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Quintana Roo","MUNICIPIOS":"Solidaridad","BENEFICIARIOS":"1,820","INVERSIÓN":"\$53,736,749.59"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Quintana Roo","MUNICIPIOS":"Tulum","BENEFICIARIOS":"497","INVERSIÓN":"\$18,265,652.39"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Tabasco","MUNICIPIOS":"Balancán","BENEFICIARIOS":"5,804","INVERSIÓN":"\$284,691,745.97"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Tabasco","MUNICIPIOS":"Emiliano Zapata","BENEFICIARIOS":"4,929","INVERSIÓN":"\$182,378,309.31"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Tabasco","MUNICIPIOS":"Tenosique","BENEFICIARIOS":"6,388","INVERSIÓN":"\$272,396,259.57"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Abalá","BENEFICIARIOS":"71","INVERSIÓN":"\$3,126,948.96"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Acanceh","BENEFICIARIOS":"158","INVERSIÓN":"\$4,938,805.03"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Baca","BENEFICIARIOS":"119","INVERSIÓN":"\$4,101,410.21"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Bokobá","BENEFICIARIOS":"75","INVERSIÓN":"\$3,533,953.20"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Buctzotz","BENEFICIARIOS":"1,535","INVERSIÓN":"\$65,961,760.84"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Cacalchén","BENEFICIARIOS":"198","INVERSIÓN":"\$9,234,948.12"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Calotmul","BENEFICIARIOS":"132","INVERSIÓN":"\$5,961,991.21"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Cansahcab","BENEFICIARIOS":"500","INVERSIÓN":"\$17,555,244.77"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Celestún","BENEFICIARIOS":"107","INVERSIÓN":"\$3,584,419.48"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Cenotillo","BENEFICIARIOS":"76","INVERSIÓN":"\$2,896,253.74"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Chankom","BENEFICIARIOS":"173","INVERSIÓN":"\$7,039,858.35"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Chemax","BENEFICIARIOS":"204","INVERSIÓN":"\$11,201,955.71"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Chichimilá","BENEFICIARIOS":"111","INVERSIÓN":"\$4,486,876.18"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Chicxulub Pueblo","BENEFICIARIOS":"55","INVERSIÓN":"\$2,095,477.91"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Chikindzonot","BENEFICIARIOS":"827","INVERSIÓN":"\$39,417,446.36"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Chocholá","BENEFICIARIOS":"113","INVERSIÓN":"\$3,998,700.71"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Conkal","BENEFICIARIOS":"149","INVERSIÓN":"\$4,860,355.06"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Cuncunul","BENEFICIARIOS":"122","INVERSIÓN":"\$6,318,529.77"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Cuzamá","BENEFICIARIOS":"62","INVERSIÓN":"\$3,027,855.12"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Dzemul","BENEFICIARIOS":"114","INVERSIÓN":"\$4,412,308.84"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Dzidzantún","BENEFICIARIOS":"223","INVERSIÓN":"\$8,341,452.27"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Dzilam de Bravo","BENEFICIARIOS":"365","INVERSIÓN":"\$15,830,474.40"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Dzilam González","BENEFICIARIOS":"357","INVERSIÓN":"\$13,521,300.53"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Dzitás","BENEFICIARIOS":"80","INVERSIÓN":"\$4,747,265.05"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Dzoncauich","BENEFICIARIOS":"114","INVERSIÓN":"\$4,488,729.49"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Espita","BENEFICIARIOS":"344","INVERSIÓN":"\$13,525,570.02"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Halachó","BENEFICIARIOS":"460","INVERSIÓN":"\$20,093,899.54"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Hocabá","BENEFICIARIOS":"28","INVERSIÓN":"\$1,296,417.75"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Hoctún","BENEFICIARIOS":"105","INVERSIÓN":"\$3,701,572.55"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Homún","BENEFICIARIOS":"104","INVERSIÓN":"\$3,749,255.65"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Huhí","BENEFICIARIOS":"82","INVERSIÓN":"\$2,668,876.45"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Hunucmá","BENEFICIARIOS":"1,908","INVERSIÓN":"\$69,868,440.52"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Ixil","BENEFICIARIOS":"104","INVERSIÓN":"\$3,769,150.83"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Izamal","BENEFICIARIOS":"1,243","INVERSIÓN":"\$46,604,082.81"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Kanasín","BENEFICIARIOS":"1,189","INVERSIÓN":"\$40,266,041.84"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Kantunil","BENEFICIARIOS":"82","INVERSIÓN":"\$3,840,378.04"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Kaua","BENEFICIARIOS":"608","INVERSIÓN":"\$25,828,327.65"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Kinchil","BENEFICIARIOS":"299","INVERSIÓN":"\$10,210,721.63"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Kopomá","BENEFICIARIOS":"53","INVERSIÓN":"\$2,201,150.28"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Maxcanú","BENEFICIARIOS":"998","INVERSIÓN":"\$36,618,896.29"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Mérida","BENEFICIARIOS":"16,085","INVERSIÓN":"\$553,519,103.96"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Mocochá","BENEFICIARIOS":"42","INVERSIÓN":"\$1,514,198.37"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Motul","BENEFICIARIOS":"740","INVERSIÓN":"\$29,773,787.57"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Muna","BENEFICIARIOS":"433","INVERSIÓN":"\$15,615,032.75"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Muxupip","BENEFICIARIOS":"71","INVERSIÓN":"\$2,651,540.00"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Opichén","BENEFICIARIOS":"174","INVERSIÓN":"\$6,291,017.00"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Panabá","BENEFICIARIOS":"983","INVERSIÓN":"\$41,251,198.44"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Progreso","BENEFICIARIOS":"1,949","INVERSIÓN":"\$66,926,723.48"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Quintana Roo","BENEFICIARIOS":"67","INVERSIÓN":"\$3,823,281.15"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Río Lagartos","BENEFICIARIOS":"177","INVERSIÓN":"\$6,096,781.13"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Sacalum","BENEFICIARIOS":"364","INVERSIÓN":"\$14,903,064.03"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Samahil","BENEFICIARIOS":"239","INVERSIÓN":"\$8,092,697.26"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Sanahcat","BENEFICIARIOS":"22","INVERSIÓN":"\$1,018,885.13"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"San Felipe","BENEFICIARIOS":"385","INVERSIÓN":"\$15,497,934.11"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Santa Elena","BENEFICIARIOS":"985","INVERSIÓN":"\$39,229,983.84"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Seyé","BENEFICIARIOS":"101","INVERSIÓN":"\$3,721,628.00"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Sinanché","BENEFICIARIOS":"35","INVERSIÓN":"\$1,979,513.76"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Sotuta","BENEFICIARIOS":"42","INVERSIÓN":"\$1,985,341.39"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Sucilá","BENEFICIARIOS":"231","INVERSIÓN":"\$9,080,028.80"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Sudzal","BENEFICIARIOS":"175","INVERSIÓN":"\$7,835,431.19"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Suma","BENEFICIARIOS":"102","INVERSIÓN":"\$4,282,506.93"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tahmek","BENEFICIARIOS":"78","INVERSIÓN":"\$3,173,030.29"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tecoh","BENEFICIARIOS":"211","INVERSIÓN":"\$7,828,957.77"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tekal de Venegas","BENEFICIARIOS":"303","INVERSIÓN":"\$11,343,121.17"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tekantó","BENEFICIARIOS":"230","INVERSIÓN":"\$10,695,138.57"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tekit","BENEFICIARIOS":"206","INVERSIÓN":"\$7,602,745.22"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tekom","BENEFICIARIOS":"121","INVERSIÓN":"\$5,388,784.00"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Telchac Pueblo","BENEFICIARIOS":"68","INVERSIÓN":"\$2,625,115.73"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Telchac Puerto","BENEFICIARIOS":"52","INVERSIÓN":"\$1,653,855.51"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Temax","BENEFICIARIOS":"193","INVERSIÓN":"\$7,265,266.27"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Temozón","BENEFICIARIOS":"879","INVERSIÓN":"\$37,756,568.94"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tepakán","BENEFICIARIOS":"107","INVERSIÓN":"\$4,695,743.28"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tetiz","BENEFICIARIOS":"233","INVERSIÓN":"\$8,591,283.48"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Teya","BENEFICIARIOS":"60","INVERSIÓN":"\$1,836,562.48"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Ticul","BENEFICIARIOS":"2,636","INVERSIÓN":"\$102,695,969.61"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Timucuy","BENEFICIARIOS":"27","INVERSIÓN":"\$1,151,222.32"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tinum","BENEFICIARIOS":"330","INVERSIÓN":"\$12,902,387.52"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tixcacalcupul","BENEFICIARIOS":"687","INVERSIÓN":"\$30,667,515.75"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tixkokob","BENEFICIARIOS":"607","INVERSIÓN":"\$22,952,816.64"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tixpéhual","BENEFICIARIOS":"46","INVERSIÓN":"\$1,315,588.50"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tizimín","BENEFICIARIOS":"1,621","INVERSIÓN":"\$67,260,019.73"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Tunkás","BENEFICIARIOS":"111","INVERSIÓN":"\$6,553,521.62"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Uayma","BENEFICIARIOS":"153","INVERSIÓN":"\$6,345,395.34"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Ucú","BENEFICIARIOS":"568","INVERSIÓN":"\$20,323,565.49"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Umán","BENEFICIARIOS":"1,459","INVERSIÓN":"\$47,368,043.04"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Valladolid","BENEFICIARIOS":"1,738","INVERSIÓN":"\$68,083,929.90"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Xocchel","BENEFICIARIOS":"18","INVERSIÓN":"\$834,402.71"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Yaxcabá","BENEFICIARIOS":"860","INVERSIÓN":"\$34,980,659.76"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Yaxkukul","BENEFICIARIOS":"63","INVERSIÓN":"\$1,852,474.41"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Yucatán","MUNICIPIOS":"Yobaín","BENEFICIARIOS":"57","INVERSIÓN":"\$1,758,709.94"},{"PERIODO":"TOTAL","ESTADO":"","MUNICIPIOS":"","BENEFICIARIOS":"162,216","INVERSIÓN":"\$6,442,000,173.71"}]';
  bool toggle = true;

  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSample),
  );

  final _suubject = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _suubject.add(_controller.text);
    _controller.addListener(() {
      _suubject.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Tren Maya",
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
    return _suubject.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _suubject.close();
    _controller.dispose();
    super.dispose();
  }
}