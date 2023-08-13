import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/constants_methods.dart';
import '../../../../core/end_points.dart';
import '../../data_providers/my_dio.dart';
import '../../response/home/restaurant_response.dart';

class RestaurantRequest {
  Future restaurantRequest() async {
    try {

      Response response = await MyDio.getData(
        endPoint: res,
      );
      printTest('restaurantresponse${response.statusCode}');
      printResponse('restaurantRequest${response.data}');

      return Restaurant.fromJson(response.data);
    } on SocketException {
      print('enternet error');
    } on FormatException {
      print('server error');
    } catch (error) {
      printError('restaurantresponse$error');
    }
  }
}
