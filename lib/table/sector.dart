import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:rxdart/rxdart.dart';

class PorSector extends StatefulWidget {
  @override
  _PorSectorState createState() => _PorSectorState();
}

class _PorSectorState extends State<PorSector> {
  static String jsonSample ='[{"estado":"Aguascalientes","cve_edo":"01","hombres":"2057","mujeres":"4084","total":"6141","id_estado":"1","anio_presupuestal":"2019"},{"estado":"Baja California","cve_edo":"02","hombres":"1257","mujeres":"1543","total":"2800","id_estado":"2","anio_presupuestal":"2019"},{"estado":"Baja California Sur","cve_edo":"03","hombres":"1780","mujeres":"2434","total":"4214","id_estado":"3","anio_presupuestal":"2019"},{"estado":"Campeche","cve_edo":"04","hombres":"11887","mujeres":"15559","total":"27446","id_estado":"4","anio_presupuestal":"2019"},{"estado":"Chiapas","cve_edo":"07","hombres":"66918","mujeres":"85007","total":"151925","id_estado":"7","anio_presupuestal":"2019"},{"estado":"Chihuahua","cve_edo":"08","hombres":"4790","mujeres":"7418","total":"12208","id_estado":"8","anio_presupuestal":"2019"},{"estado":"Ciudad de México","cve_edo":"09","hombres":"20976","mujeres":"27669","total":"48645","id_estado":"9","anio_presupuestal":"2019"},{"estado":"Coahuila de Zaragoza","cve_edo":"05","hombres":"2755","mujeres":"4463","total":"7218","id_estado":"5","anio_presupuestal":"2019"},{"estado":"Colima","cve_edo":"06","hombres":"3620","mujeres":"5425","total":"9045","id_estado":"6","anio_presupuestal":"2019"},{"estado":"Durango","cve_edo":"10","hombres":"4100","mujeres":"5812","total":"9912","id_estado":"10","anio_presupuestal":"2019"},{"estado":"Guanajuato","cve_edo":"11","hombres":"5113","mujeres":"9274","total":"14387","id_estado":"11","anio_presupuestal":"2019"},{"estado":"Guerrero","cve_edo":"12","hombres":"34255","mujeres":"45133","total":"79388","id_estado":"12","anio_presupuestal":"2019"},{"estado":"Hidalgo","cve_edo":"13","hombres":"11172","mujeres":"15799","total":"26971","id_estado":"13","anio_presupuestal":"2019"},{"estado":"Jalisco","cve_edo":"14","hombres":"9249","mujeres":"13545","total":"22794","id_estado":"14","anio_presupuestal":"2019"},{"estado":"México","cve_edo":"15","hombres":"42232","mujeres":"58068","total":"100300","id_estado":"15","anio_presupuestal":"2019"},{"estado":"Michoacán de Ocampo","cve_edo":"16","hombres":"28247","mujeres":"39208","total":"67455","id_estado":"16","anio_presupuestal":"2019"},{"estado":"Morelos","cve_edo":"17","hombres":"16528","mujeres":"22704","total":"39232","id_estado":"17","anio_presupuestal":"2019"},{"estado":"Nayarit","cve_edo":"18","hombres":"5804","mujeres":"8088","total":"13892","id_estado":"18","anio_presupuestal":"2019"},{"estado":"Nuevo León","cve_edo":"19","hombres":"2417","mujeres":"3068","total":"5485","id_estado":"19","anio_presupuestal":"2019"},{"estado":"Oaxaca","cve_edo":"20","hombres":"21605","mujeres":"30686","total":"52291","id_estado":"20","anio_presupuestal":"2019"},{"estado":"Puebla","cve_edo":"21","hombres":"13703","mujeres":"19567","total":"33270","id_estado":"21","anio_presupuestal":"2019"},{"estado":"Querétaro","cve_edo":"22","hombres":"4251","mujeres":"7069","total":"11320","id_estado":"22","anio_presupuestal":"2019"},{"estado":"Quintana Roo","cve_edo":"23","hombres":"6568","mujeres":"8903","total":"15471","id_estado":"23","anio_presupuestal":"2019"},{"estado":"San Luis Potosí","cve_edo":"24","hombres":"6174","mujeres":"8733","total":"14907","id_estado":"24","anio_presupuestal":"2019"},{"estado":"Sinaloa","cve_edo":"25","hombres":"6399","mujeres":"8649","total":"15048","id_estado":"25","anio_presupuestal":"2019"},{"estado":"Sonora","cve_edo":"26","hombres":"2590","mujeres":"3567","total":"6157","id_estado":"26","anio_presupuestal":"2019"},{"estado":"Tabasco","cve_edo":"27","hombres":"49762","mujeres":"65669","total":"115431","id_estado":"27","anio_presupuestal":"2019"},{"estado":"Tamaulipas","cve_edo":"28","hombres":"9111","mujeres":"12659","total":"21770","id_estado":"28","anio_presupuestal":"2019"},{"estado":"Tlaxcala","cve_edo":"29","hombres":"11668","mujeres":"15988","total":"27656","id_estado":"29","anio_presupuestal":"2019"},{"estado":"Veracruz","cve_edo":"30","hombres":"49737","mujeres":"66330","total":"116067","id_estado":"30","anio_presupuestal":"2019"},{"estado":"Yucatán","cve_edo":"31","hombres":"9757","mujeres":"13648","total":"23405","id_estado":"31","anio_presupuestal":"2019"},{"estado":"Zacatecas","cve_edo":"32","hombres":"6804","mujeres":"11532","total":"18336","id_estado":"32","anio_presupuestal":"2019"},{"estado":"Aguascalientes","cve_edo":"01","hombres":"2618","mujeres":"5236","total":"7854","id_estado":"1","anio_presupuestal":"2020"},{"estado":"Baja California","cve_edo":"02","hombres":"1157","mujeres":"1663","total":"2820","id_estado":"2","anio_presupuestal":"2020"},{"estado":"Baja California Sur","cve_edo":"03","hombres":"2438","mujeres":"3524","total":"5962","id_estado":"3","anio_presupuestal":"2020"},{"estado":"Campeche","cve_edo":"04","hombres":"15255","mujeres":"20275","total":"35530","id_estado":"4","anio_presupuestal":"2020"},{"estado":"Chiapas","cve_edo":"07","hombres":"70698","mujeres":"94944","total":"165642","id_estado":"7","anio_presupuestal":"2020"},{"estado":"Chihuahua","cve_edo":"08","hombres":"5285","mujeres":"8782","total":"14067","id_estado":"8","anio_presupuestal":"2020"},{"estado":"Ciudad de México","cve_edo":"09","hombres":"17861","mujeres":"24456","total":"42317","id_estado":"9","anio_presupuestal":"2020"},{"estado":"Coahuila de Zaragoza","cve_edo":"05","hombres":"2956","mujeres":"4814","total":"7770","id_estado":"5","anio_presupuestal":"2020"},{"estado":"Colima","cve_edo":"06","hombres":"3267","mujeres":"5136","total":"8403","id_estado":"6","anio_presupuestal":"2020"},{"estado":"Durango","cve_edo":"10","hombres":"4821","mujeres":"6979","total":"11800","id_estado":"10","anio_presupuestal":"2020"},{"estado":"Guanajuato","cve_edo":"11","hombres":"5148","mujeres":"9533","total":"14681","id_estado":"11","anio_presupuestal":"2020"},{"estado":"Guerrero","cve_edo":"12","hombres":"36783","mujeres":"50521","total":"87304","id_estado":"12","anio_presupuestal":"2020"},{"estado":"Hidalgo","cve_edo":"13","hombres":"11158","mujeres":"16350","total":"27508","id_estado":"13","anio_presupuestal":"2020"},{"estado":"Jalisco","cve_edo":"14","hombres":"9212","mujeres":"14675","total":"23887","id_estado":"14","anio_presupuestal":"2020"},{"estado":"México","cve_edo":"15","hombres":"38820","mujeres":"55769","total":"94589","id_estado":"15","anio_presupuestal":"2020"},{"estado":"Michoacán de Ocampo","cve_edo":"16","hombres":"31236","mujeres":"44647","total":"75883","id_estado":"16","anio_presupuestal":"2020"},{"estado":"Morelos","cve_edo":"17","hombres":"16390","mujeres":"23564","total":"39954","id_estado":"17","anio_presupuestal":"2020"},{"estado":"Nayarit","cve_edo":"18","hombres":"6276","mujeres":"8759","total":"15035","id_estado":"18","anio_presupuestal":"2020"},{"estado":"Nuevo León","cve_edo":"19","hombres":"2326","mujeres":"3476","total":"5802","id_estado":"19","anio_presupuestal":"2020"},{"estado":"Oaxaca","cve_edo":"20","hombres":"24914","mujeres":"36133","total":"61047","id_estado":"20","anio_presupuestal":"2020"},{"estado":"Puebla","cve_edo":"21","hombres":"15381","mujeres":"22887","total":"38268","id_estado":"21","anio_presupuestal":"2020"},{"estado":"Querétaro","cve_edo":"22","hombres":"4565","mujeres":"8020","total":"12585","id_estado":"22","anio_presupuestal":"2020"},{"estado":"Quintana Roo","cve_edo":"23","hombres":"7747","mujeres":"10693","total":"18440","id_estado":"23","anio_presupuestal":"2020"},{"estado":"San Luis Potosí","cve_edo":"24","hombres":"6399","mujeres":"9626","total":"16025","id_estado":"24","anio_presupuestal":"2020"},{"estado":"Sinaloa","cve_edo":"25","hombres":"6666","mujeres":"9344","total":"16010","id_estado":"25","anio_presupuestal":"2020"},{"estado":"Sonora","cve_edo":"26","hombres":"2512","mujeres":"3705","total":"6217","id_estado":"26","anio_presupuestal":"2020"},{"estado":"Tabasco","cve_edo":"27","hombres":"57534","mujeres":"81262","total":"138796","id_estado":"27","anio_presupuestal":"2020"},{"estado":"Tamaulipas","cve_edo":"28","hombres":"9626","mujeres":"13846","total":"23472","id_estado":"28","anio_presupuestal":"2020"},{"estado":"Tlaxcala","cve_edo":"29","hombres":"13231","mujeres":"19454","total":"32685","id_estado":"29","anio_presupuestal":"2020"},{"estado":"Veracruz","cve_edo":"30","hombres":"54692","mujeres":"76825","total":"131517","id_estado":"30","anio_presupuestal":"2020"},{"estado":"Yucatán","cve_edo":"31","hombres":"12013","mujeres":"17328","total":"29341","id_estado":"31","anio_presupuestal":"2020"},{"estado":"Zacatecas","cve_edo":"32","hombres":"8379","mujeres":"14615","total":"22994","id_estado":"32","anio_presupuestal":"2020"},{"estado":"Aguascalientes","cve_edo":"01","hombres":"2839","mujeres":"5004","total":"7843","id_estado":"1","anio_presupuestal":"2021"},{"estado":"Baja California","cve_edo":"02","hombres":"815","mujeres":"1171","total":"1986","id_estado":"2","anio_presupuestal":"2021"},{"estado":"Baja California Sur","cve_edo":"03","hombres":"2972","mujeres":"4148","total":"7120","id_estado":"3","anio_presupuestal":"2021"},{"estado":"Campeche","cve_edo":"04","hombres":"12132","mujeres":"15661","total":"27793","id_estado":"4","anio_presupuestal":"2021"},{"estado":"Chiapas","cve_edo":"07","hombres":"44555","mujeres":"56852","total":"101407","id_estado":"7","anio_presupuestal":"2021"},{"estado":"Chihuahua","cve_edo":"08","hombres":"4374","mujeres":"7081","total":"11455","id_estado":"8","anio_presupuestal":"2021"},{"estado":"Ciudad de México","cve_edo":"09","hombres":"16308","mujeres":"21763","total":"38071","id_estado":"9","anio_presupuestal":"2021"},{"estado":"Coahuila de Zaragoza","cve_edo":"05","hombres":"2390","mujeres":"3816","total":"6206","id_estado":"5","anio_presupuestal":"2021"},{"estado":"Colima","cve_edo":"06","hombres":"2161","mujeres":"3315","total":"5476","id_estado":"6","anio_presupuestal":"2021"},{"estado":"Durango","cve_edo":"10","hombres":"5612","mujeres":"7629","total":"13241","id_estado":"10","anio_presupuestal":"2021"},{"estado":"Guanajuato","cve_edo":"11","hombres":"4511","mujeres":"7573","total":"12084","id_estado":"11","anio_presupuestal":"2021"},{"estado":"Guerrero","cve_edo":"12","hombres":"26544","mujeres":"35251","total":"61795","id_estado":"12","anio_presupuestal":"2021"},{"estado":"Hidalgo","cve_edo":"13","hombres":"7866","mujeres":"11227","total":"19093","id_estado":"13","anio_presupuestal":"2021"},{"estado":"Jalisco","cve_edo":"14","hombres":"6802","mujeres":"10609","total":"17411","id_estado":"14","anio_presupuestal":"2021"},{"estado":"México","cve_edo":"15","hombres":"27091","mujeres":"38286","total":"65377","id_estado":"15","anio_presupuestal":"2021"},{"estado":"Michoacán de Ocampo","cve_edo":"16","hombres":"22113","mujeres":"31378","total":"53491","id_estado":"16","anio_presupuestal":"2021"},{"estado":"Morelos","cve_edo":"17","hombres":"12869","mujeres":"16759","total":"29628","id_estado":"17","anio_presupuestal":"2021"},{"estado":"Nayarit","cve_edo":"18","hombres":"4285","mujeres":"5914","total":"10199","id_estado":"18","anio_presupuestal":"2021"},{"estado":"Nuevo León","cve_edo":"19","hombres":"1615","mujeres":"2702","total":"4317","id_estado":"19","anio_presupuestal":"2021"},{"estado":"Oaxaca","cve_edo":"20","hombres":"20824","mujeres":"29748","total":"50572","id_estado":"20","anio_presupuestal":"2021"},{"estado":"Puebla","cve_edo":"21","hombres":"15444","mujeres":"21539","total":"36983","id_estado":"21","anio_presupuestal":"2021"},{"estado":"Querétaro","cve_edo":"22","hombres":"3535","mujeres":"5866","total":"9401","id_estado":"22","anio_presupuestal":"2021"},{"estado":"Quintana Roo","cve_edo":"23","hombres":"7605","mujeres":"10103","total":"17708","id_estado":"23","anio_presupuestal":"2021"},{"estado":"San Luis Potosí","cve_edo":"24","hombres":"5574","mujeres":"8534","total":"14108","id_estado":"24","anio_presupuestal":"2021"},{"estado":"Sinaloa","cve_edo":"25","hombres":"5776","mujeres":"7900","total":"13676","id_estado":"25","anio_presupuestal":"2021"},{"estado":"Sonora","cve_edo":"26","hombres":"2071","mujeres":"2994","total":"5065","id_estado":"26","anio_presupuestal":"2021"},{"estado":"Tabasco","cve_edo":"27","hombres":"37042","mujeres":"49813","total":"86855","id_estado":"27","anio_presupuestal":"2021"},{"estado":"Tamaulipas","cve_edo":"28","hombres":"7223","mujeres":"10117","total":"17340","id_estado":"28","anio_presupuestal":"2021"},{"estado":"Tlaxcala","cve_edo":"29","hombres":"14348","mujeres":"20786","total":"35134","id_estado":"29","anio_presupuestal":"2021"},{"estado":"Veracruz","cve_edo":"30","hombres":"40372","mujeres":"55790","total":"96162","id_estado":"30","anio_presupuestal":"2021"},{"estado":"Yucatán","cve_edo":"31","hombres":"11819","mujeres":"16633","total":"28452","id_estado":"31","anio_presupuestal":"2021"},{"estado":"Zacatecas","cve_edo":"32","hombres":"7796","mujeres":"11821","total":"19617","id_estado":"32","anio_presupuestal":"2021"},{"estado":"Aguascalientes","cve_edo":"01","hombres":"2245","mujeres":"3910","total":"6155","id_estado":"1","anio_presupuestal":"2022"},{"estado":"Baja California","cve_edo":"02","hombres":"1170","mujeres":"1468","total":"2638","id_estado":"2","anio_presupuestal":"2022"},{"estado":"Baja California Sur","cve_edo":"03","hombres":"2831","mujeres":"3876","total":"6707","id_estado":"3","anio_presupuestal":"2022"},{"estado":"Campeche","cve_edo":"04","hombres":"8120","mujeres":"11207","total":"19327","id_estado":"4","anio_presupuestal":"2022"},{"estado":"Chiapas","cve_edo":"07","hombres":"27204","mujeres":"37608","total":"64812","id_estado":"7","anio_presupuestal":"2022"},{"estado":"Chihuahua","cve_edo":"08","hombres":"3735","mujeres":"5836","total":"9571","id_estado":"8","anio_presupuestal":"2022"},{"estado":"Ciudad de México","cve_edo":"09","hombres":"11781","mujeres":"16094","total":"27875","id_estado":"9","anio_presupuestal":"2022"},{"estado":"Coahuila de Zaragoza","cve_edo":"05","hombres":"1957","mujeres":"3152","total":"5109","id_estado":"5","anio_presupuestal":"2022"},{"estado":"Colima","cve_edo":"06","hombres":"2525","mujeres":"3788","total":"6313","id_estado":"6","anio_presupuestal":"2022"},{"estado":"Durango","cve_edo":"10","hombres":"4300","mujeres":"5964","total":"10264","id_estado":"10","anio_presupuestal":"2022"},{"estado":"Guanajuato","cve_edo":"11","hombres":"4103","mujeres":"6471","total":"10574","id_estado":"11","anio_presupuestal":"2022"},{"estado":"Guerrero","cve_edo":"12","hombres":"18543","mujeres":"25144","total":"43687","id_estado":"12","anio_presupuestal":"2022"},{"estado":"Hidalgo","cve_edo":"13","hombres":"5372","mujeres":"7596","total":"12968","id_estado":"13","anio_presupuestal":"2022"},{"estado":"Jalisco","cve_edo":"14","hombres":"5308","mujeres":"8518","total":"13826","id_estado":"14","anio_presupuestal":"2022"},{"estado":"México","cve_edo":"15","hombres":"22692","mujeres":"32772","total":"55464","id_estado":"15","anio_presupuestal":"2022"},{"estado":"Michoacán de Ocampo","cve_edo":"16","hombres":"16172","mujeres":"23480","total":"39652","id_estado":"16","anio_presupuestal":"2022"},{"estado":"Morelos","cve_edo":"17","hombres":"9477","mujeres":"12246","total":"21723","id_estado":"17","anio_presupuestal":"2022"},{"estado":"Nayarit","cve_edo":"18","hombres":"3753","mujeres":"5306","total":"9059","id_estado":"18","anio_presupuestal":"2022"},{"estado":"Nuevo León","cve_edo":"19","hombres":"1534","mujeres":"2365","total":"3899","id_estado":"19","anio_presupuestal":"2022"},{"estado":"Oaxaca","cve_edo":"20","hombres":"12459","mujeres":"18334","total":"30793","id_estado":"20","anio_presupuestal":"2022"},{"estado":"Puebla","cve_edo":"21","hombres":"12040","mujeres":"16935","total":"28975","id_estado":"21","anio_presupuestal":"2022"},{"estado":"Querétaro","cve_edo":"22","hombres":"2650","mujeres":"4575","total":"7225","id_estado":"22","anio_presupuestal":"2022"},{"estado":"Quintana Roo","cve_edo":"23","hombres":"5384","mujeres":"7539","total":"12923","id_estado":"23","anio_presupuestal":"2022"},{"estado":"San Luis Potosí","cve_edo":"24","hombres":"4973","mujeres":"7943","total":"12916","id_estado":"24","anio_presupuestal":"2022"},{"estado":"Sinaloa","cve_edo":"25","hombres":"4462","mujeres":"6217","total":"10679","id_estado":"25","anio_presupuestal":"2022"},{"estado":"Sonora","cve_edo":"26","hombres":"1983","mujeres":"3012","total":"4995","id_estado":"26","anio_presupuestal":"2022"},{"estado":"Tabasco","cve_edo":"27","hombres":"23587","mujeres":"33526","total":"57113","id_estado":"27","anio_presupuestal":"2022"},{"estado":"Tamaulipas","cve_edo":"28","hombres":"5541","mujeres":"7941","total":"13482","id_estado":"28","anio_presupuestal":"2022"},{"estado":"Tlaxcala","cve_edo":"29","hombres":"10125","mujeres":"15113","total":"25238","id_estado":"29","anio_presupuestal":"2022"},{"estado":"Veracruz","cve_edo":"30","hombres":"28881","mujeres":"39351","total":"68232","id_estado":"30","anio_presupuestal":"2022"},{"estado":"Yucatán","cve_edo":"31","hombres":"8998","mujeres":"13926","total":"22924","id_estado":"31","anio_presupuestal":"2022"},{"estado":"Zacatecas","cve_edo":"32","hombres":"5655","mujeres":"8336","total":"13991","id_estado":"32","anio_presupuestal":"2022"}]';
  bool toggle = true;

  final _controller = TextEditingController.fromValue(
    TextEditingValue(text: jsonSample),
  );

  final _ssuubject = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _ssuubject.add(_controller.text);
    _controller.addListener(() {
      _ssuubject.add(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff450011),
        title: Text(
          "Por Sector",
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
    return _ssuubject.transform(new StreamTransformer<String, List?>.fromHandlers(
        handleData: (String value, EventSink<List?> sink) {
          sink.add(jsonDecode(value));
        })).asBroadcastStream();
  }

  @override
  void dispose() {
    _ssuubject.close();
    _controller.dispose();
    super.dispose();
  }
}