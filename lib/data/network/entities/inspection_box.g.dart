// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InspectionBoxAdapter extends TypeAdapter<InspectionBox> {
  @override
  final int typeId = 7;

  @override
  InspectionBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InspectionBox(
      notes: fields[0] as String?,
      check: fields[1] as bool?,
      createdAt: fields[2] as String?,
      updatedAt: fields[3] as String?,
      publishedAt: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, InspectionBox obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.notes)
      ..writeByte(1)
      ..write(obj.check)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.updatedAt)
      ..writeByte(4)
      ..write(obj.publishedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InspectionBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionBox _$InspectionBoxFromJson(Map<String, dynamic> json) =>
    InspectionBox(
      notes: json['notes'] as String?,
      check: json['check'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      publishedAt: json['publishedAt'] as String?,
    );

Map<String, dynamic> _$InspectionBoxToJson(InspectionBox instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'check': instance.check,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
    };
