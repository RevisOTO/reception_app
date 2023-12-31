

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:reception_app/data/modelsView/step_box_form.dart';
import 'package:reception_app/data/network/entities/inspection_box.dart';
import 'package:reception_app/data/network/entities/inspection_step.dart';
import 'package:reception_app/data/network/entities/inspection_wheel.dart';

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
     this.inspectionStep 
  }){
    generateSteps();
  }

  generateSteps() {
    if(inspectionStep == null || inspectionStep!.isEmpty ){
      inspectionStep = [];
      inspectionStep?.add(InspectionStep(type: StepFormType.leftSideBox.toString(), order: 1, latitude: 0, longitude: 0,inspectionBox: InspectionBox()));
      inspectionStep?.add(InspectionStep(type: StepFormType.rightSideBox.toString(), order: 1, latitude: 0, longitude: 0,inspectionBox: InspectionBox()));
      inspectionStep?.add(InspectionStep(type: StepFormType.frontSideBox.toString(), order: 1, latitude: 0, longitude: 0,inspectionBox: InspectionBox()));
      inspectionStep?.add(InspectionStep(type: StepFormType.backSideBox.toString(), order: 1, latitude: 0, longitude: 0,inspectionBox: InspectionBox()));
      inspectionStep?.add(InspectionStep(type: StepFormType.floorSideBox.toString(), order: 1, latitude: 0, longitude: 0,inspectionBox: InspectionBox()));
      inspectionStep?.add(InspectionStep(type: StepFormType.roofSideBox.toString(), order: 1, latitude: 0, longitude: 0,inspectionBox: InspectionBox()));
      inspectionStep?.add(InspectionStep(type: StepFormType.leftSideWheel.toString(), order: 1, latitude: 0, longitude: 0,inspectionWheel: InspectionWheel()));
      inspectionStep?.add(InspectionStep(type: StepFormType.rightSideWheel.toString(), order: 1, latitude: 0, longitude: 0,inspectionWheel: InspectionWheel()));
    }
  }

  factory Registration.fromJson(Map<String, dynamic> json) => _$RegistrationFromJson(json);
 
}