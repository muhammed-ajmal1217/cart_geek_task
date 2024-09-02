import 'dart:developer';
import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  Future<List<Model>> getDatas<Model>(String url, Model Function(Map<String, dynamic>) fromJson) async {
    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        List<dynamic> jsonList = response.data['response'];
        List<Model> dataList = jsonList.map((e) => fromJson(e as Map<String, dynamic>)).toList();
        return dataList;
      } else {
        log('Error in fetching data');
        return [];
      }
    } catch (e) {
      log('exception in fetching data : $e');
      return [];
    }
  }
}
