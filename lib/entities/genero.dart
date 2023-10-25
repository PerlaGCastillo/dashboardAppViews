class Genero {
  String estado;
  String cve_edo;
  String hombres;
  String mujeres;
  String total;
  String id_estado;

  Generos(this.estado, this.cve_edo, this.hombres, this.mujeres, this.total, this.id_estado);

  Generos.fromJson(Map<String, dynamic> json){
    estado = json['estado'];
    cve_edo = json['cve_edo'];
    hombres = json['hombres'];
    mujeres = json[' mujeres'];
    total = json['total'];
    id_estado = json['id_estado'];
  }
  Map<String, dynamic> toJson() => {
    'estado': estado,
    'cve_edo': cve_edo,
    'hombres' : hombres,
    'mujeres' : mujeres,
    'id_estado' : id_estado,
  };
}