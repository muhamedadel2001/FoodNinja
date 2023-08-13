
class LoginResponse {
  LoginResponse({
    User? user,
    String? token,
    bool? status,
    String? massage,
  }) {
    _user = user;
    _token = token;
    _status = status;
    _massage = massage;
  }
  LoginResponse.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
    _status = json['status'];
    _massage = json['massage'];
  }
  User? _user;
  String? _token;
  bool? _status;
  String? _massage;

  User get user => _user??User();
  String get token => _token ?? '';
  bool get status => _status ?? false;
  String get massage => _massage ?? '';
}

class User {
  User({
    num? id,
    String? name,
    String? mobile,
    String? email,
    dynamic emailVerifiedAt,
    String? otp,
    dynamic avatar,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _mobile = mobile;
    _email = email;
    _emailVerifiedAt = emailVerifiedAt;
    _otp = otp;
    _avatar = avatar;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _mobile = json['mobile'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _otp = json['otp'];
    _avatar = json['avatar'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _mobile;
  String? _email;
  dynamic _emailVerifiedAt;
  String? _otp;
  dynamic _avatar;
  String? _createdAt;
  String? _updatedAt;

  num get id => _id ?? 0;
  String get name => _name ?? '';
  String get mobile => _mobile ?? '';
  String get email => _email ?? '';
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String get otp => _otp ?? '';
  dynamic get avatar => _avatar;
  String get createdAt => _createdAt ?? '';
  String get updatedAt => _updatedAt ?? '';
}
