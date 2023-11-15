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
      fields[1] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Add_data obj) {
    writer
      ..writeByte(0)
      ..write(obj.concepto)
      ..writeByte(1)
      ..write(obj.cantidad)
      ..writeByte(2)
      ..write(obj.archivo);
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
