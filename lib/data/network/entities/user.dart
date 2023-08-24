import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class User extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  DateTime? createdAt;
  @HiveField(2)
  DateTime? updatedAt;
  @HiveField(3)
  DateTime? deletedAt;
  @HiveField(4)
  String? userName;
  @HiveField(5)
  String? phoneNumber;
  @HiveField(6)
  String? email;
  @HiveField(7)
  String? role;
  @HiveField(8)
  String? verificationCode;
 

  User(
      {this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.id,
      this.userName,
      this.phoneNumber,
      this.email,
      this.role,
      this.verificationCode,
   });

    factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
 

}