import 'dart:io';

import 'package:dio/dio.dart';
import 'package:foodninja/data/remote/response/auth/signup_response.dart';

import '../../../../core/constants_methods.dart';
import '../../../../core/end_points.dart';
import '../../data_providers/my_dio.dart';

class SignupRequest {
  Future signupRequest(
      {required String email,
      required String password,
      required String name,
      required String mobile}) async {
    try {
      Response response = await MyDio.postData(endPoint: reg, data: {
        "email": email,
        "password": password,
        "name":name,
        "mobile":mobile,
      });
      printTest('SignupRequest${response.statusCode}');
      printResponse('SignupRequest${response.data}');
      return SignupResponse.fromJson(response.data);
    } on SocketException {
      print('enternet error');
    } on FormatException {
      print('server error');
    } catch (error) {
      printError('Signupresponse$error');
    }
  }
}
