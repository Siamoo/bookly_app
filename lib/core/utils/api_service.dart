
import 'package:dio/dio.dart';

class ApiService
{
  final _bassUrl = 'https://www.googleapis.com/books/v1/';

  final Dio _dio;
  ApiService(this._dio);


  Future<Map<String,dynamic>> get({required String endPoint}) async {
   var responne = await _dio.get('$_bassUrl$endPoint');

   return responne.data;
  }
}