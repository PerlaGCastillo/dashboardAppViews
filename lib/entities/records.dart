import 'dart:convert';

class Records {
  String? estado;
  String? cve_edo;
  String? hombres;
  String? mujeres;
  String? total;
  String? id_estado;
  String? anio_presupuestal;

  Records(this.estado, this.cve_edo, this.hombres, this.mujeres, this.total, this.id_estado, this.anio_presupuestal);

  Records.fromJson(Map<String, dynamic> json){
    estado = json['estado'];
    cve_edo = json['cve_edo'];
    hombres = json['hombres'];
    mujeres = json['mujeres'];
    total = json['total'];
    id_estado = json['id_estado'];
    anio_presupuestal = json['anio_presupuestal'];
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
