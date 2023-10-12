// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_date.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdddataAdapter extends TypeAdapter<Add_data> {
  @override
  final int typeId = 1;

  @override
  Add_data read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Add_data(
      fields[0] as String,
      fields[1] as DateTime,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
      fields[6] as String,
      fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Add_data obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.beneficiarios)
      ..writeByte(1)
      ..write(obj.datetime)
      ..writeByte(2)
      ..write(obj.entidad)
      ..writeByte(3)
      ..write(obj.sectores)
      ..writeByte(4)
      ..write(obj.aprendices)
      ..writeByte(5)
      ..write(obj.empresa)
      ..writeByte(6)
      ..write(obj.genero)
      ..writeByte(7)
      ..write(obj.edad);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdddataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
