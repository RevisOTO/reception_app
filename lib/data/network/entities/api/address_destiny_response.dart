class AddressDestinyResponse {
  AddressDestinyResponse({
    required this.data,
  });
  late final Data data;
  
  AddressDestinyResponse.fromJson(Map<String, dynamic> json){
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
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
    required this.name,
    required this.latitude,
    required this.logitude,
     this.notes,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });
  late final String name;
  late final int latitude;
  late final int logitude;
  late final String? notes;
  late final String createdAt;
  late final String updatedAt;
  late final String publishedAt;
  
  Attributes.fromJson(Map<String, dynamic> json){
    name = json['name'];
    latitude = json['latitude'];
    logitude = json['logitude'];
    notes = json['notes'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['latitude'] = latitude;
    _data['logitude'] = logitude;
    _data['notes'] = notes;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    return _data;
  }
}