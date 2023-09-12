

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registration.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class Registration {
 @HiveField(0)
  int? id;
   @HiveField(1)
  String? type;
   @HiveField(2)
  String? equipmentNumber;
   @HiveField(3)
  String? pedimentoNumber;
   @HiveField(4)
  String? notes;
   @HiveField(5)
  String? seals;
   @HiveField(6)
  String? entryDateTime;
   @HiveField(7)
  String? loadDateTime;
   @HiveField(8)
  String? transferDateTime;
   @HiveField(9)
  String? createdAt;
   @HiveField(10)
  String? updatedAt;
   @HiveField(11)
  String? publishedAt;
   @HiveField(12)
  int? createdById;
   @HiveField(13)
  int? updatedById;
   @HiveField(14)
  String? forwardedName;
   @HiveField(15)
  String? clientName;
   @HiveField(16)
  String? operatorName;
   @HiveField(17)
  String? truckNumber;
   @HiveField(18)
  String? addressName;
   @HiveField(19)
  String? transferrName;
   @HiveField(20)
  int? latitude;
   @HiveField(21)
  int? longitude;
   @HiveField(22)
  int? pinRelease;
   @HiveField(23)
  String? releasePhone;
   @HiveField(24)
  String? releaseEmail;
   @HiveField(25)
  String? releaseLink;
   @HiveField(26)
  String? statusRelease;
   @HiveField(27)
  bool? releaseAccept;
   @HiveField(29)
  String? exitDateTime;
   @HiveField(30)
  String? emailInspector;
   @HiveField(31)
  List<InspectionStep>? inspectionStep;


  Registration({
     this.id,
     this.type,
     this.equipmentNumber,
     this.pedimentoNumber,
     this.notes,
     this.seals,
     this.entryDateTime,
     this.loadDateTime,
     this.transferDateTime,
     this.createdAt,
     this.updatedAt,
     this.publishedAt,
     this.createdById,
     this.updatedById,
     this.forwardedName,
     this.clientName,
     this.operatorName,
     this.truckNumber,
     this.addressName,
     this.transferrName,
     this.latitude,
     this.longitude,
     this.pinRelease,
     this.releasePhone,
     this.releaseEmail,
     this.releaseLink,
     this.statusRelease,
     this.releaseAccept,
     this.exitDateTime,
     this.emailInspector,
  });

  
 
}