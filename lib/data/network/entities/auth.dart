import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
 
part 'auth.g.dart';

@HiveType(typeId: 6)
@JsonSerializable()
class Auth {
  @HiveField(0)
  String? idUser;
  @HiveField(1)
  String? accessToken;
  @HiveField(2)
  String? refreshToken;
  @HiveField(3)
  String? refreshToken2;

  Auth({this.accessToken, this.refreshToken,this.idUser});
 
  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
 
}