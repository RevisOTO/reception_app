import 'package:reception_app/data/network/entities/api/inspection_steps_response.dart';

class RegistrationResponse {
  RegistrationResponse({
    required this.data,
    required this.meta,
  });
  late final List<Data> data;
  late final Meta meta;
  
  RegistrationResponse.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
    meta = Meta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    _data['meta'] = meta.toJson();
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
    required this.equipmentNumber,
    required this.pedimentoNumber,
    required this.notes,
    required this.seals,
    required this.entryDateTime,
    required this.loadDateTime,
    required this.transferDateTime,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.forwardedName,
    required this.clientName,
    required this.operatorName,
    required this.truckNumber,
    required this.addressName,
    required this.transferrName,
    required this.latitude,
    required this.longitude,
    required this.pinRelease,
    required this.releasePhone,
    required this.releaseEmail,
    required this.releaseLink,
    required this.statusRelease,
     this.releaseAccept,
    required this.exitDateTime,
    required this.emailInspector,
    required this.inspectionSteps,
  });
  late final String type;
  late final String equipmentNumber;
  late final String pedimentoNumber;
  late final String notes;
  late final String seals;
  late final String entryDateTime;
  late final String loadDateTime;
  late final String transferDateTime;
  late final String createdAt;
  late final String updatedAt;
  late final String publishedAt;
  late final String forwardedName;
  late final String clientName;
  late final String operatorName;
  late final String truckNumber;
  late final String addressName;
  late final String transferrName;
  late final int latitude;
  late final int longitude;
  late final int pinRelease;
  late final String releasePhone;
  late final String releaseEmail;
  late final String releaseLink;
  late final String statusRelease;
  late final Null releaseAccept;
  late final String exitDateTime;
  late final String emailInspector;
  late final InspectionSteps inspectionSteps;
  
  Attributes.fromJson(Map<String, dynamic> json){
    type = json['type'];
    equipmentNumber = json['equipmentNumber'];
    pedimentoNumber = json['pedimentoNumber'];
    notes = json['notes'];
    seals = json['seals'];
    entryDateTime = json['entryDateTime'];
    loadDateTime = json['loadDateTime'];
    transferDateTime = json['transferDateTime'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    forwardedName = json['forwardedName'];
    clientName = json['clientName'];
    operatorName = json['operatorName'];
    truckNumber = json['truckNumber'];
    addressName = json['addressName'];
    transferrName = json['transferrName'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    pinRelease = json['pinRelease'];
    releasePhone = json['releasePhone'];
    releaseEmail = json['releaseEmail'];
    releaseLink = json['releaseLink'];
    statusRelease = json['statusRelease'];
    releaseAccept = null;
    exitDateTime = json['exitDateTime'];
    emailInspector = json['emailInspector'];
    inspectionSteps = InspectionSteps.fromJson(json['inspection_steps']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['equipmentNumber'] = equipmentNumber;
    _data['pedimentoNumber'] = pedimentoNumber;
    _data['notes'] = notes;
    _data['seals'] = seals;
    _data['entryDateTime'] = entryDateTime;
    _data['loadDateTime'] = loadDateTime;
    _data['transferDateTime'] = transferDateTime;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    _data['forwardedName'] = forwardedName;
    _data['clientName'] = clientName;
    _data['operatorName'] = operatorName;
    _data['truckNumber'] = truckNumber;
    _data['addressName'] = addressName;
    _data['transferrName'] = transferrName;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['pinRelease'] = pinRelease;
    _data['releasePhone'] = releasePhone;
    _data['releaseEmail'] = releaseEmail;
    _data['releaseLink'] = releaseLink;
    _data['statusRelease'] = statusRelease;
    _data['releaseAccept'] = releaseAccept;
    _data['exitDateTime'] = exitDateTime;
    _data['emailInspector'] = emailInspector;
    _data['inspection_steps'] = inspectionSteps.toJson();
    return _data;
  }
}

 

class Meta {
  Meta({
    required this.pagination,
  });
  late final Pagination pagination;
  
  Meta.fromJson(Map<String, dynamic> json){
    pagination = Pagination.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pagination'] = pagination.toJson();
    return _data;
  }
}

class Pagination {
  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });
  late final int page;
  late final int pageSize;
  late final int pageCount;
  late final int total;
  
  Pagination.fromJson(Map<String, dynamic> json){
    page = json['page'];
    pageSize = json['pageSize'];
    pageCount = json['pageCount'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['page'] = page;
    _data['pageSize'] = pageSize;
    _data['pageCount'] = pageCount;
    _data['total'] = total;
    return _data;
  }
}