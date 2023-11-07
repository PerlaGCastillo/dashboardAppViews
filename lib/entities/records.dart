class Records {
  String estado;
  int cve_edo;
  String hombres;
  String mujeres;
  String total;
  String id_estado;
  String anio_presupuestal;

  Records(this.estado, this.cve_edo, this.hombres, this.mujeres, this.total, this.id_estado, this.anio_presupuestal);

  Records.fromJson(Map<String, dynamic> decodedJson = jsonDecode(response.body)){
  //Records.fromJson(Map<String, dynamic> json){
    estado = decodedJson['estado'];
    cve_edo = decodedJson['cve_edo'];
    hombres = decodedJson['hombres'];
    mujeres = decodedJson['mujeres'];
    total = decodedJson['total'];
    id_estado = decodedJson['id_estado'];
    anio_presupuestal = decodedJson['anio_presupuestal'];
  }
  Map<String, dynamic> toJson() => {
    'estado': estado,
    'cve_edo': cve_edo,
    'hombres' : hombres,
    'mujeres' : mujeres,
    'id_estado' : id_estado,
    'anio_presupuestal': anio_presupuestal,
  };
}

/*

Map<String, dynamic> userMap = jsonDecode(jsonString);
var records = Records.fromJson(userMap);

print('hola, ${records.name}!');*/
