import 'dart:convert';

SignupResponse signupResponseFromJson(String str) =>
    SignupResponse.fromJson(json.decode(str));

class SignupResponse {
  SignupResponse({
    bool? status,
    Data? data,
    String? token,
    Massege? massege,
  }) {
    _status = status;
    _data = data;
    _token = token;
    _massege = massege;
  }

  SignupResponse.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _token = json['token'];
    _massege =
        json['massege'] != null ? Massege.fromJson(json['massege']) : null;
  }
  bool? _status;
  Data? _data;
  String? _token;
  Massege? _massege;

  bool get status => _status ?? false;
  Data? get data => _data;
  String get token => _token ?? '';
  Massege? get massege => _massege;
}

Massege massegeFromJson(String str) => Massege.fromJson(json.decode(str));

class Massege {
  Massege({
    List<String>? email,
  }) {
    _email = email;
  }

  Massege.fromJson(dynamic json) {
    _email = json['email'] != null ? json['email'].cast<String>() : [];
  }
  List<String>? _email;

  List<String>? get email => _email;


}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

class Data {
  Data({
    String? name,
    String? email,
    String? mobile,
    num? otp,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) {
    _name = name;
    _email = email;
    _mobile = mobile;
    _otp = otp;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
  }

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _mobile = json['mobile'];
    _otp = json['otp'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _name;
  String? _email;
  String? _mobile;
  num? _otp;
  String? _updatedAt;
  String? _createdAt;
  num? _id;

  String get name => _name ?? '';
  String get email => _email ?? '';
  String get mobile => _mobile ?? '';
  num get otp => _otp ?? 0;
  String get updatedAt => _updatedAt ?? '';
  String get createdAt => _createdAt ?? '';
  num get id => _id ?? 0;
}
