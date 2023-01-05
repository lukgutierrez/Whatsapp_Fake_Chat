// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Peoples.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PeopleAdapter extends TypeAdapter<People> {
  @override
  final int typeId = 1;

  @override
  People read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return People(
      datas1: fields[0] as String,
      datas2: fields[1] as String,
      datas3: fields[2] as String,
      datas4: fields[3] as String,
      datas5: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, People obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.datas1)
      ..writeByte(1)
      ..write(obj.datas2)
      ..writeByte(2)
      ..write(obj.datas3)
      ..writeByte(3)
      ..write(obj.datas4)
      ..writeByte(4)
      ..write(obj.datas5);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeopleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
