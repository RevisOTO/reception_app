class InspectionWheelResponse {
  Data? data;

  InspectionWheelResponse({this.data});

  InspectionWheelResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?   Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  Attributes? attributes;

  Data({this.id, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ?   Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['id'] =  id;
    if (attributes != null) {
      data['attributes'] = attributes!.toJson();
    }
    return data;
  }
}

class Attributes {
  bool? checkFrontExterior;
  bool? checkFrontInterior;
  bool? checkBackwardExterior;
  bool? checkBackwardInterior;
  String? notes;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;

  Attributes(
      {this.checkFrontExterior,
      this.checkFrontInterior,
      this.checkBackwardExterior,
      this.checkBackwardInterior,
      this.notes,
      this.createdAt,
      this.updatedAt,
      this.publishedAt});

  Attributes.fromJson(Map<String, dynamic> json) {
    checkFrontExterior = json['checkFrontExterior'];
    checkFrontInterior = json['checkFrontInterior'];
    checkBackwardExterior = json['checkBackwardExterior'];
    checkBackwardInterior = json['checkBackwardInterior'];
    notes = json['notes'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['checkFrontExterior'] = checkFrontExterior;
    data['checkFrontInterior'] = checkFrontInterior;
    data['checkBackwardExterior'] = checkBackwardExterior;
    data['checkBackwardInterior'] = checkBackwardInterior;
    data['notes'] = notes;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['publishedAt'] = publishedAt;
    return data;
  }
}
