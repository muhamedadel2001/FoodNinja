import 'dart:convert';

Restaurant restaurantFromJson(String str) =>
    Restaurant.fromJson(json.decode(str));

class Restaurant {
  Restaurant({
    bool? status,
    List<DataRestaurent>? data,
  }) {
    _status = status;
    _data = data;
  }

  Restaurant.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(DataRestaurent.fromJson(v));
      });
    }
  }
  bool? _status;
  List<DataRestaurent>? _data;

  bool get status => _status ?? false;
  List<DataRestaurent> get data => _data ?? [];
}

DataRestaurent dataFromJson(String str) => DataRestaurent.fromJson(json.decode(str));

class DataRestaurent {
  DataRestaurent({
    num? id,
    String? pic,
    String? coverPhoto,
    String? name,
    String? deliveryTime,
    String? tags1,
    String? tags2,
    String? verified,
    String? lat,
    String? long,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _pic = pic;
    _coverPhoto = coverPhoto;
    _name = name;
    _deliveryTime = deliveryTime;
    _tags1 = tags1;
    _tags2 = tags2;
    _verified = verified;
    _lat = lat;
    _long = long;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  DataRestaurent.fromJson(dynamic json) {
    _id = json['id'];
    _pic = json['pic'];
    _coverPhoto = json['cover_photo'];
    _name = json['name'];
    _deliveryTime = json['delivery_time'];
    _tags1 = json['tags1'];
    _tags2 = json['tags2'];
    _verified = json['verified'];
    _lat = json['lat'];
    _long = json['long'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _pic;
  String? _coverPhoto;
  String? _name;
  String? _deliveryTime;
  String? _tags1;
  String? _tags2;
  String? _verified;
  String? _lat;
  String? _long;
  String? _createdAt;
  String? _updatedAt;

  num get id => _id ?? 0;
  String get pic => _pic ?? '';
  String get coverPhoto => _coverPhoto ?? '';
  String get name => _name ?? '';
  String get deliveryTime => _deliveryTime ?? '';
  String get tags1 => _tags1 ?? '';
  String get tags2 => _tags2 ?? '';
  String get verified => _verified ?? '';
  String get lat => _lat ?? '';
  String get long => _long ?? '';
  String get createdAt => _createdAt ?? '';
  String get updatedAt => _updatedAt ?? '';
}
