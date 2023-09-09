
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_wheel.g.dart';

@HiveType(typeId: 9)
@JsonSerializable()
class InspectionWheel {
   @HiveField(0)
  bool? checkFrontExterior;
   @HiveField(1)
  bool? checkFrontInterior;
   @HiveField(2)
  bool? checkBackwardExterior;
   @HiveField(3)
  bool? checkBackwardInterior;
   @HiveField(4)
  String? notes;
   @HiveField(5)
  String? createdAt;
   @HiveField(6)
  String? updatedAt;
   @HiveField(7)
  String? publishedAt;

  InspectionWheel(
      {this.checkFrontExterior,
      this.checkFrontInterior,
      this.checkBackwardExterior,
      this.checkBackwardInterior,
      this.notes,
      this.createdAt,
      this.updatedAt,
      this.publishedAt});

      factory InspectionWheel.fromJson(Map<String, dynamic> json) => _$InspectionWheelFromJson(json);
}