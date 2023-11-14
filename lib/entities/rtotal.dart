class Records {
  String? estado;
  String? total;
  String? id_estado;
  String? anio_presupuestal;

  Records(this.estado, this.total, this.id_estado, this.anio_presupuestal);

  Records.fromJson(Map<String, dynamic> json){
    estado = json["estado"];
    total = json["total"];
    id_estado = json["id_estado"];
    anio_presupuestal = json["anio_presupuestal"];
  }
  Map<String, dynamic> toJson() => {
    'estado' = estado,
    'total' = total,
    'id_estado' = id_estado,
    'anio_presupuestal' = anio_presupuestal,
  };
}