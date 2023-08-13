import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/constants_methods.dart';
import '../../../../core/end_points.dart';
import '../../data_providers/my_dio.dart';
import '../../response/home/restaurant_response.dart';
import '../../response/search/search_response.dart';

class SearchRequest {
  Future searchRequest() async {
    try {

      Response response = await MyDio.getData(
        endPoint: search,
      );
      printTest('foodresponse${response.statusCode}');
      printResponse('foodRequest${response.data}');

      return SearchResponse.fromJson(response.data);
    } on SocketException {
      print('enternet error');
    } on FormatException {
      print('server error');
    } catch (error) {
      printError('foodresponse$error');
    }
  }
}
