// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegistrationAdapter extends TypeAdapter<Registration> {
  @override
  final int typeId = 4;

  @override
  Registration read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Registration(
      id: fields[0] as int?,
      type: fields[1] as String?,
      equipmentNumber: fields[2] as String?,
      pedimentoNumber: fields[3] as String?,
      notes: fields[4] as String?,
      seals: fields[5] as String?,
      entryDateTime: fields[6] as String?,
      loadDateTime: fields[7] as String?,
      transferDateTime: fields[8] as String?,
      createdAt: fields[9] as String?,
      updatedAt: fields[10] as String?,
      publishedAt: fields[11] as String?,
      createdById: fields[12] as int?,
      updatedById: fields[13] as int?,
      forwardedName: fields[14] as String?,
      clientName: fields[15] as String?,
      operatorName: fields[16] as String?,
      truckNumber: fields[17] as String?,
      addressName: fields[18] as String?,
      transferrName: fields[19] as String?,
      latitude: fields[20] as int?,
      longitude: fields[21] as int?,
      pinRelease: fields[22] as int?,
      releasePhone: fields[23] as String?,
      releaseEmail: fields[24] as String?,
      releaseLink: fields[25] as String?,
      statusRelease: fields[26] as String?,
      releaseAccept: fields[27] as bool?,
      exitDateTime: fields[29] as String?,
      emailInspector: fields[30] as String?,
      inspectionStep: (fields[31] as List?)?.cast<InspectionStep>(),
    );
  }

  @override
  void write(BinaryWriter writer, Registration obj) {
    writer
      ..writeByte(31)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.equipmentNumber)
      ..writeByte(3)
      ..write(obj.pedimentoNumber)
      ..writeByte(4)
      ..write(obj.notes)
      ..writeByte(5)
      ..write(obj.seals)
      ..writeByte(6)
      ..write(obj.entryDateTime)
      ..writeByte(7)
      ..write(obj.loadDateTime)
      ..writeByte(8)
      ..write(obj.transferDateTime)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt)
      ..writeByte(11)
      ..write(obj.publishedAt)
      ..writeByte(12)
      ..write(obj.createdById)
      ..writeByte(13)
      ..write(obj.updatedById)
      ..writeByte(14)
      ..write(obj.forwardedName)
      ..writeByte(15)
      ..write(obj.clientName)
      ..writeByte(16)
      ..write(obj.operatorName)
      ..writeByte(17)
      ..write(obj.truckNumber)
      ..writeByte(18)
      ..write(obj.addressName)
      ..writeByte(19)
      ..write(obj.transferrName)
      ..writeByte(20)
      ..write(obj.latitude)
      ..writeByte(21)
      ..write(obj.longitude)
      ..writeByte(22)
      ..write(obj.pinRelease)
      ..writeByte(23)
      ..write(obj.releasePhone)
      ..writeByte(24)
      ..write(obj.releaseEmail)
      ..writeByte(25)
      ..write(obj.releaseLink)
      ..writeByte(26)
      ..write(obj.statusRelease)
      ..writeByte(27)
      ..write(obj.releaseAccept)
      ..writeByte(29)
      ..write(obj.exitDateTime)
      ..writeByte(30)
      ..write(obj.emailInspector)
      ..writeByte(31)
      ..write(obj.inspectionStep);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegistrationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Registration _$RegistrationFromJson(Map<String, dynamic> json) => Registration(
      id: json['id'] as int?,
      type: json['type'] as String?,
      equipmentNumber: json['equipmentNumber'] as String?,
      pedimentoNumber: json['pedimentoNumber'] as String?,
      notes: json['notes'] as String?,
      seals: json['seals'] as String?,
      entryDateTime: json['entryDateTime'] as String?,
      loadDateTime: json['loadDateTime'] as String?,
      transferDateTime: json['transferDateTime'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      publishedAt: json['publishedAt'] as String?,
      createdById: json['createdById'] as int?,
      updatedById: json['updatedById'] as int?,
      forwardedName: json['forwardedName'] as String?,
      clientName: json['clientName'] as String?,
      operatorName: json['operatorName'] as String?,
      truckNumber: json['truckNumber'] as String?,
      addressName: json['addressName'] as String?,
      transferrName: json['transferrName'] as String?,
      latitude: json['latitude'] as int?,
      longitude: json['longitude'] as int?,
      pinRelease: json['pinRelease'] as int?,
      releasePhone: json['releasePhone'] as String?,
      releaseEmail: json['releaseEmail'] as String?,
      releaseLink: json['releaseLink'] as String?,
      statusRelease: json['statusRelease'] as String?,
      releaseAccept: json['releaseAccept'] as bool?,
      exitDateTime: json['exitDateTime'] as String?,
      emailInspector: json['emailInspector'] as String?,
      inspectionStep: (json['inspectionStep'] as List<dynamic>?)
          ?.map((e) => InspectionStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegistrationToJson(Registration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'equipmentNumber': instance.equipmentNumber,
      'pedimentoNumber': instance.pedimentoNumber,
      'notes': instance.notes,
      'seals': instance.seals,
      'entryDateTime': instance.entryDateTime,
      'loadDateTime': instance.loadDateTime,
      'transferDateTime': instance.transferDateTime,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'createdById': instance.createdById,
      'updatedById': instance.updatedById,
      'forwardedName': instance.forwardedName,
      'clientName': instance.clientName,
      'operatorName': instance.operatorName,
      'truckNumber': instance.truckNumber,
      'addressName': instance.addressName,
      'transferrName': instance.transferrName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'pinRelease': instance.pinRelease,
      'releasePhone': instance.releasePhone,
      'releaseEmail': instance.releaseEmail,
      'releaseLink': instance.releaseLink,
      'statusRelease': instance.statusRelease,
      'releaseAccept': instance.releaseAccept,
      'exitDateTime': instance.exitDateTime,
      'emailInspector': instance.emailInspector,
      'inspectionStep': instance.inspectionStep,
    };
