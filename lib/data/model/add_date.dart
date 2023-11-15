import 'package:hive/hive.dart';
// part 'add_date.g.dart';

@HiveType(typeId: 1)
class Add_data extends HiveObject {
  @HiveField(0)
  String concepto;
  @HiveField(1)
  String cantidad;
  @HiveField(2)
  String archivo;
  Add_data(this.concepto, this.cantidad, this.archivo);
}