class Records {
  String estado;
  String cve_edo;
  String hombres;
  String mujeres;
  String id_estado;
  String año_presupuestal;

  Records(this.estado, this.cve_edo, this.hombres, this.mujeres, this.id_estado, this.año_presupuestal);

  Records.fromJson(Map<String, dynamic> json){
  estado = json ['estado'];
  cve_edo = json ['cve_edo'];
  hombres = json ['hombres'];
  mujeres = json ['mujeres'];
  id_estado = json ['id_estado'];
  año_presupuestal = json ['año_presupuestal'];
  }
}