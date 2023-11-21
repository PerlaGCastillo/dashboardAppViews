import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class Istmo extends StatefulWidget {
  @override
  _IstmoState createState() => _IstmoState();
}

class _IstmoState extends State<Istmo> {
  static String jsonSample = '[{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Asunción Ixtaltepec","BENEFICIARIOS":"368","INVERSIÓN":"\$17,564,410.13"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"El Barrio de la Soledad","BENEFICIARIOS":"144","INVERSIÓN":"\$6,186,710.17"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Ciudad Ixtepec","BENEFICIARIOS":"1,589","INVERSIÓN":"\$59,706,822.21"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Chahuites","BENEFICIARIOS":"258","INVERSIÓN":"\$10,015,975.50"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"El Espinal","BENEFICIARIOS":"253","INVERSIÓN":"\$8,897,697.26"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Guevea de Humboldt","BENEFICIARIOS":"692","INVERSIÓN":"\$32,696,594.07"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Heroica Ciudad de Juchitán de Zaragoza","BENEFICIARIOS":"6,566","INVERSIÓN":"\$236,430,757.34"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Magdalena Tequisistlán","BENEFICIARIOS":"197","INVERSIÓN":"\$11,328,522.19"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Magdalena Tlacotepec","BENEFICIARIOS":"54","INVERSIÓN":"\$2,644,088.61"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Matías Romero Avendaño","BENEFICIARIOS":"1,503","INVERSIÓN":"\$57,523,571.77"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santiago Niltepec","BENEFICIARIOS":"651","INVERSIÓN":"\$26,665,608.64"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Reforma de Pineda","BENEFICIARIOS":"478","INVERSIÓN":"\$19,255,001.56"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Salina Cruz","BENEFICIARIOS":"2,067","INVERSIÓN":"\$67,354,637.96"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Blas Atempa","BENEFICIARIOS":"539","INVERSIÓN":"\$19,768,565.36"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Dionisio del Mar","BENEFICIARIOS":"395","INVERSIÓN":"\$16,111,695.65"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Francisco del Mar","BENEFICIARIOS":"1,241","INVERSIÓN":"\$47,995,773.57"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Francisco Ixhuatán","BENEFICIARIOS":"1,151","INVERSIÓN":"\$49,692,919.11"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Juan Cotzocón","BENEFICIARIOS":"451","INVERSIÓN":"\$21,443,331.39"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Juan Guichicovi","BENEFICIARIOS":"532","INVERSIÓN":"\$28,548,563.67"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Juan Mazatlán","BENEFICIARIOS":"790","INVERSIÓN":"\$37,887,549.48"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Lucas Camotlán","BENEFICIARIOS":"8","INVERSIÓN":"\$442,336.26"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Mateo del Mar","BENEFICIARIOS":"106","INVERSIÓN":"\$4,632,956.87"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Miguel Chimalapa","BENEFICIARIOS":"196","INVERSIÓN":"\$11,952,549.28"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Miguel Tenango","BENEFICIARIOS":"29","INVERSIÓN":"\$2,129,621.06"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Pedro Comitancillo","BENEFICIARIOS":"129","INVERSIÓN":"\$5,190,555.01"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Pedro Huamelula","BENEFICIARIOS":"471","INVERSIÓN":"\$19,968,702.27"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Pedro Huilotepec","BENEFICIARIOS":"102","INVERSIÓN":"\$3,367,631.13"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"San Pedro Tapanatepec","BENEFICIARIOS":"722","INVERSIÓN":"\$29,371,012.67"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santa María Chimalapa","BENEFICIARIOS":"221","INVERSIÓN":"\$16,337,547.26"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santa María Guienagati","BENEFICIARIOS":"445","INVERSIÓN":"\$18,440,629.58"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santa María Jalapa del Marqués","BENEFICIARIOS":"724","INVERSIÓN":"\$28,844,756.45"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santa María Mixtequilla","BENEFICIARIOS":"243","INVERSIÓN":"\$10,047,206.72"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santa María Petapa","BENEFICIARIOS":"345","INVERSIÓN":"\$13,778,123.13"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santa María Totolapilla","BENEFICIARIOS":"10","INVERSIÓN":"\$539,080.34"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santa María Xadani","BENEFICIARIOS":"354","INVERSIÓN":"\$12,257,662.20"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santiago Astata","BENEFICIARIOS":"196","INVERSIÓN":"\$7,977,986.42"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santiago Ixcuintepec","BENEFICIARIOS":"12","INVERSIÓN":"\$514,737.38"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santiago Lachiguiri","BENEFICIARIOS":"240","INVERSIÓN":"\$12,560,252.40"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santiago Laollaga","BENEFICIARIOS":"245","INVERSIÓN":"\$11,733,233.73"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santiago Yaveo","BENEFICIARIOS":"268","INVERSIÓN":"\$10,502,099.94"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santo Domingo Ingenio","BENEFICIARIOS":"252","INVERSIÓN":"\$8,586,190.53"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santo Domingo Chihuitán","BENEFICIARIOS":"50","INVERSIÓN":"\$2,697,939.71"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santo Domingo Petapa","BENEFICIARIOS":"262","INVERSIÓN":"\$13,357,588.05"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santo Domingo Tehuantepec","BENEFICIARIOS":"3,688","INVERSIÓN":"\$138,586,199.37"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Santo Domingo Zanatepec","BENEFICIARIOS":"1,953","INVERSIÓN":"\$79,555,013.94"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Oaxaca","MUNICIPIOS":"Unión Hidalgo","BENEFICIARIOS":"1,146","INVERSIÓN":"\$39,223,125.80"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Acayucan","BENEFICIARIOS":"2,710","INVERSIÓN":"\$112,787,196.71"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Angel R. Cabada","BENEFICIARIOS":"1,174","INVERSIÓN":"\$46,423,884.54"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Catemaco","BENEFICIARIOS":"1,258","INVERSIÓN":"\$54,974,289.15"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Coatzacoalcos","BENEFICIARIOS":"6,525","INVERSIÓN":"\$216,471,799.88"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Cosoleacaque","BENEFICIARIOS":"2,444","INVERSIÓN":"\$92,950,478.75"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Chinameca","BENEFICIARIOS":"486","INVERSIÓN":"\$22,071,791.78"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Las Choapas","BENEFICIARIOS":"1,478","INVERSIÓN":"\$69,674,198.66"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Hidalgotitlán","BENEFICIARIOS":"1,728","INVERSIÓN":"\$78,464,409.27"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Hueyapan de Ocampo","BENEFICIARIOS":"923","INVERSIÓN":"\$45,901,840.79"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Isla","BENEFICIARIOS":"1,904","INVERSIÓN":"\$76,920,035.47"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Ixhuatlán del Sureste","BENEFICIARIOS":"259","INVERSIÓN":"\$10,087,889.21"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Jáltipan","BENEFICIARIOS":"1,442","INVERSIÓN":"\$61,062,961.31"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Jesús Carranza","BENEFICIARIOS":"1,152","INVERSIÓN":"\$48,224,998.44"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Juan Rodríguez Clara","BENEFICIARIOS":"706","INVERSIÓN":"\$36,469,511.48"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Mecayapan","BENEFICIARIOS":"3,292","INVERSIÓN":"\$133,283,534.21"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Minatitlán","BENEFICIARIOS":"4,262","INVERSIÓN":"\$165,269,162.43"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Moloacán","BENEFICIARIOS":"229","INVERSIÓN":"\$9,947,538.89"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Oluta","BENEFICIARIOS":"593","INVERSIÓN":"\$23,997,545.40"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Oteapan","BENEFICIARIOS":"893","INVERSIÓN":"\$37,144,931.34"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Pajapan","BENEFICIARIOS":"1,942","INVERSIÓN":"\$85,096,225.28"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Playa Vicente","BENEFICIARIOS":"3,322","INVERSIÓN":"\$134,083,281.87"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"San Andrés Tuxtla","BENEFICIARIOS":"2,707","INVERSIÓN":"\$114,995,092.73"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"San Juan Evangelista","BENEFICIARIOS":"593","INVERSIÓN":"\$32,547,589.78"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Santiago Tuxtla","BENEFICIARIOS":"1,251","INVERSIÓN":"\$54,603,746.96"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Sayula de Alemán","BENEFICIARIOS":"990","INVERSIÓN":"\$48,602,776.47"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Soconusco","BENEFICIARIOS":"401","INVERSIÓN":"\$17,734,901.25"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Soteapan","BENEFICIARIOS":"3,144","INVERSIÓN":"\$138,361,502.99"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Texistepec","BENEFICIARIOS":"1,029","INVERSIÓN":"\$49,669,238.87"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Zaragoza","BENEFICIARIOS":"777","INVERSIÓN":"\$32,283,341.47"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Agua Dulce","BENEFICIARIOS":"554","INVERSIÓN":"\$23,169,340.88"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Nanchital de Lázaro Cárdenas del Río","BENEFICIARIOS":"361","INVERSIÓN":"\$12,137,301.54"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Tatahuicapan de Juárez","BENEFICIARIOS":"1,428","INVERSIÓN":"\$67,140,704.03"},{"PERIODO":"01/01/2019 - 31/12/2022","ESTADO":"Veracruz","MUNICIPIOS":"Uxpanapa","BENEFICIARIOS":"1,142","INVERSIÓN":"\$58,077,953.15"},{"PERIODO":"TOTAL","ESTADO":"","MUNICIPIOS":"","BENEFICIARIOS":"85,435","INVERSIÓN":"\$3,490,944,528.12"}]';
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
          "Istmo de Tehuantepec",
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