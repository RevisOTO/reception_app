import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:reception_app/data/network/entities/inspection_box.dart';
import 'package:reception_app/data/network/entities/inspection_wheel.dart';

part 'inspection_step.g.dart';

@HiveType(typeId: 8)
@JsonSerializable()
class InspectionStep {
  InspectionStep({
    required this.type,
    required this.order,
    required this.latitude,
    required this.longitude,
      this.createdAt,
      this.updatedAt,
     this.publishedAt,
     this.inspectionBox,
     this.inspectionWheel,
     this.id = -1
  });
   @HiveField(0)
  late final String type;
   @HiveField(1)
  late int order;
   @HiveField(2)
  late double latitude;
   @HiveField(3)
  late double longitude;
   @HiveField(4)
  late final String? createdAt;
   @HiveField(5)
  late final String? updatedAt;
   @HiveField(6)
  late final String? publishedAt;
   @HiveField(7)
  late InspectionBox? inspectionBox;
   @HiveField(8)
  late InspectionWheel? inspectionWheel;
  @HiveField(9)
  int id;
  factory InspectionStep.fromJson(Map<String, dynamic> json) => _$InspectionStepFromJson(json);
  
}