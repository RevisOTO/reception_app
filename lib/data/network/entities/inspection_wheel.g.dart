// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_wheel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InspectionWheelAdapter extends TypeAdapter<InspectionWheel> {
  @override
  final int typeId = 9;

  @override
  InspectionWheel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InspectionWheel(
      checkFrontExterior: fields[0] as bool?,
      checkFrontInterior: fields[1] as bool?,
      checkBackwardExterior: fields[2] as bool?,
      checkBackwardInterior: fields[3] as bool?,
      notes: fields[4] as String?,
      createdAt: fields[5] as String?,
      updatedAt: fields[6] as String?,
      publishedAt: fields[7] as String?, id: 0,
    );
  }

  @override
  void write(BinaryWriter writer, InspectionWheel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.checkFrontExterior)
      ..writeByte(1)
      ..write(obj.checkFrontInterior)
      ..writeByte(2)
      ..write(obj.checkBackwardExterior)
      ..writeByte(3)
      ..write(obj.checkBackwardInterior)
      ..writeByte(4)
      ..write(obj.notes)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.publishedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InspectionWheelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionWheel _$InspectionWheelFromJson(Map<String, dynamic> json) =>
    InspectionWheel(
      checkFrontExterior: json['checkFrontExterior'] as bool?,
      checkFrontInterior: json['checkFrontInterior'] as bool?,
      checkBackwardExterior: json['checkBackwardExterior'] as bool?,
      checkBackwardInterior: json['checkBackwardInterior'] as bool?,
      notes: json['notes'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      publishedAt: json['publishedAt'] as String?, id: 0,
    );

Map<String, dynamic> _$InspectionWheelToJson(InspectionWheel instance) =>
    <String, dynamic>{
      'checkFrontExterior': instance.checkFrontExterior,
      'checkFrontInterior': instance.checkFrontInterior,
      'checkBackwardExterior': instance.checkBackwardExterior,
      'checkBackwardInterior': instance.checkBackwardInterior,
      'notes': instance.notes,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
    };
