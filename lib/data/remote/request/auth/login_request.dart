import 'dart:io';

import 'package:dio/dio.dart';
import 'package:foodninja/core/end_points.dart';
import 'package:foodninja/data/remote/response/auth/login_response.dart';

import '../../../../core/constants_methods.dart';
import '../../data_providers/my_dio.dart';

class LoginRequest {
  Future loginRequest({required String email, required String Password}) async {
    try {

      Response response = await MyDio.postData(endPoint: log, data: {
        "email": email,
        "password": Password,
      });
      
      printTest('loginRequest${response.statusCode}');
      printResponse('loginRequest${response.data}');

      return LoginResponse.fromJson(response.data);
    }
    on SocketException{
      print('enternet error');
    }
    on FormatException{
      print('server error');
    }

    catch (error) {

      printError('loginresponse$error');
    }
  }
}
