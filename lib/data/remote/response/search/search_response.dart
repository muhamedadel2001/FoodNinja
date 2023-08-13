import 'dart:convert';

class SearchResponse {
  SearchResponse({
      bool? status, 
      List<DataSearch>? data,}){
    _status = status;
    _data = data;
}
  SearchResponse.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(DataSearch.fromJson(v));
      });
    }
  }
  bool? _status;
  List<DataSearch>? _data;

  bool get status => _status??false;
  List<DataSearch> get data => _data??[];
}

class DataSearch {
  DataSearch({
      num? id, 
      String? name, 
      String? description, 
      String? price, 
      String? restaurentId, 
      String? catId, 
      dynamic pic, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _description = description;
    _price = price;
    _restaurentId = restaurentId;
    _catId = catId;
    _pic = pic;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  DataSearch.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _restaurentId = json['restaurent_id'];
    _catId = json['cat_id'];
    _pic = json['pic'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _description;
  String? _price;
  String? _restaurentId;
  String? _catId;
  dynamic _pic;
  String? _createdAt;
  String? _updatedAt;

  num get id => _id??0;
  String get name => _name??'';
  String get description => _description??'';
  String get price => _price??'';
  String get restaurentId => _restaurentId??'';
  String get catId => _catId??'';
  dynamic get pic => _pic;
  String get createdAt => _createdAt??'';
  String get updatedAt => _updatedAt??'';



}