import 'dart:convert';

import 'package:bookly_application/features/home/data/models/BookModel.dart';
import 'package:dio/dio.dart';

class ApiService{
  final Dio dio = Dio();

  final _baseUrl = 'https://www.googleapis.com/books/v1/' ;

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$_baseUrl$endPoint');
    return response.data;

  }


}