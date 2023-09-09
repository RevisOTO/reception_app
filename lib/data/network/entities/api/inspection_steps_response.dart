 import 'package:reception_app/data/network/entities/api/inspection_box_response.dart';
import 'package:reception_app/data/network/entities/api/inspection_wheel_response.dart';

class InspectionStepsResponse {
  InspectionStepsResponse({
    required this.inspectionSteps,
  });
  late final InspectionSteps inspectionSteps;
  
  InspectionStepsResponse.fromJson(Map<String, dynamic> json){
    inspectionSteps = InspectionSteps.fromJson(json['inspection_steps']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['inspection_steps'] = inspectionSteps.toJson();
    return _data;
  }
}

class InspectionSteps {
  InspectionSteps({
    required this.data,
  });
  late final List<Data> data;
  
  InspectionSteps.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final Attributes attributes;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    attributes = Attributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }
}

class Attributes {
  Attributes({
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
  late final String type;
  late final int order;
  late final int latitude;
  late final int longitude;
  late final String createdAt;
  late final String updatedAt;
  late final String publishedAt;
  late final InspectionBoxResponse inspectionBox;
  late final InspectionWheelResponse inspectionWheel;
  
  Attributes.fromJson(Map<String, dynamic> json){
    type = json['type'];
    order = json['order'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    inspectionBox = InspectionBoxResponse.fromJson(json['inspection_box']);
    inspectionWheel = InspectionWheelResponse.fromJson(json['inspection_wheel']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['order'] = order;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    _data['inspection_box'] = inspectionBox.toJson();
    _data['inspection_wheel'] = inspectionWheel.toJson();
    return _data;
  }
}