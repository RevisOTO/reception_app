import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_box.g.dart';

@HiveType(typeId: 7)
@JsonSerializable()
class InspectionBox {
  @HiveField(0)
  String? notes;
  @HiveField(1)
  bool? check;
  @HiveField(2)
  String? createdAt;
  @HiveField(3)
  String? updatedAt;
  @HiveField(4)
  String? publishedAt;
  @HiveField(5)
  late int id;

  InspectionBox(
      {this.notes,
      this.check = false,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      id = -1});

         factory InspectionBox.fromJson(Map<String, dynamic> json) => _$InspectionBoxFromJson(json);
}