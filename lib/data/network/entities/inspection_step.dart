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
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.inspectionBox,
    required this.inspectionWheel,
  });
   @HiveField(0)
  late final String type;
   @HiveField(1)
  late final int order;
   @HiveField(2)
  late final int latitude;
   @HiveField(3)
  late final int longitude;
   @HiveField(4)
  late final String createdAt;
   @HiveField(5)
  late final String updatedAt;
   @HiveField(6)
  late final String publishedAt;
   @HiveField(7)
  late final InspectionBox inspectionBox;
   @HiveField(8)
  late final InspectionWheel inspectionWheel;

   factory InspectionStep.fromJson(Map<String, dynamic> json) => _$InspectionStepFromJson(json);
  
}