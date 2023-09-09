
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
  @HiveField(8)
  late int id;

  InspectionWheel(
      {this.checkFrontExterior = false,
      this.checkFrontInterior = false,
      this.checkBackwardExterior = false,
      this.checkBackwardInterior = false,
      this.notes,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.id = -1});

      factory InspectionWheel.fromJson(Map<String, dynamic> json) => _$InspectionWheelFromJson(json);
}