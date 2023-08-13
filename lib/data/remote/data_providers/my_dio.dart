import 'package:dio/dio.dart';
import 'package:foodninja/core/my_cache_keys.dart';
import 'package:foodninja/data/local/cashe/my_cache.dart';

import '../../../core/constants.dart';

class MyDio {
  static Dio? dio;
  static dioInit() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseurl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
  }

  static Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? query}) async {
    dio!.options.headers = {
      'Authorization': "Bearer 85|QwxPN8ujsSOs4l6sRM5Ci2vQABeMYi6Krp9nhNar"
    };
    return await dio!.get(
      endPoint,
      queryParameters: query,
    );
  }

  static Future<Response> postData(
      {required String endPoint,
      Map<String, dynamic>? query,
      Map<String, dynamic>? data}) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': "Bearer 85|QwxPN8ujsSOs4l6sRM5Ci2vQABeMYi6Krp9nhNar"
    };
    return await dio!.post(endPoint,
        queryParameters: query,
        data: data,
        options: Options(validateStatus: (_) => true));
  }
}
