// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_step.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InspectionStepAdapter extends TypeAdapter<InspectionStep> {
  @override
  final int typeId = 8;

  @override
  InspectionStep read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InspectionStep(
      type: fields[0] as String,
      order: fields[1] as int,
      latitude: fields[2] as int,
      longitude: fields[3] as int,
      createdAt: fields[4] as String,
      updatedAt: fields[5] as String,
      publishedAt: fields[6] as String,
      inspectionBox: fields[7] as InspectionBox,
      inspectionWheel: fields[8] as InspectionWheel,
    );
  }

  @override
  void write(BinaryWriter writer, InspectionStep obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.order)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longitude)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.publishedAt)
      ..writeByte(7)
      ..write(obj.inspectionBox)
      ..writeByte(8)
      ..write(obj.inspectionWheel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InspectionStepAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionStep _$InspectionStepFromJson(Map<String, dynamic> json) =>
    InspectionStep(
      type: json['type'] as String,
      order: json['order'] as int,
      latitude: json['latitude'] as int,
      longitude: json['longitude'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      publishedAt: json['publishedAt'] as String,
      inspectionBox:
          InspectionBox.fromJson(json['inspectionBox'] as Map<String, dynamic>),
      inspectionWheel: InspectionWheel.fromJson(
          json['inspectionWheel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InspectionStepToJson(InspectionStep instance) =>
    <String, dynamic>{
      'type': instance.type,
      'order': instance.order,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'inspectionBox': instance.inspectionBox,
      'inspectionWheel': instance.inspectionWheel,
    };
