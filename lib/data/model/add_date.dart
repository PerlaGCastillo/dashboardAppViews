import 'package:hive/hive.dart';
part 'add_date.g.dart';

@HiveType(typeId: 1)
class Add_data extends HiveObject {
  @HiveField(0)
  String beneficiarios;
  @HiveField(1)
  DateTime datetime;
  @HiveField(2)
  String entidad;
  @HiveField(3)
  String sectores;
  @HiveField(4)
  String aprendices;
  @HiveField(5)
  String empresa;
  @HiveField(6)
  String genero;
  @HiveField(7)
  String edad;
  Add_data(this.beneficiarios, this.datetime, this.entidad, this.sectores, this.aprendices, this.empresa, this.genero, this.edad);
}