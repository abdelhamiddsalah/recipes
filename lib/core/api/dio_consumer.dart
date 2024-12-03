import 'package:dio/dio.dart';
import 'package:recipes/core/api/api_consumer.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;

  DioConsumer({required this.dio});
  @override
  Future delete(String path, {Object? data, Map<String, dynamic>? queryParams}) async{
   try {
  final response=await dio.delete(path,data: data,queryParameters: queryParams);
  return response.data;
} on Exception catch (e) {
  // TODO
}
  }

  @override
  Future get(String path, {Object? data, Map<String, dynamic>? queryParams}) async{
 try {
  final response=await dio.get(path,data: data,queryParameters: queryParams);
  return response.data;
} on Exception catch (e) {
  // TODO
}
  }

  @override
  Future patch(String path, {Object? data, Map<String, dynamic>? queryParams}) async{
 try {
  final response=await dio.patch(path,data: data,queryParameters: queryParams);
   return response.data;
} on Exception catch (e) {
  // TODO
}
  }

  @override
  Future post(String path, {Object? data, Map<String, dynamic>? queryParams})async {
   try {
  final response=await dio.post(path,data: data,queryParameters: queryParams);
   return response.data;
} on Exception catch (e) {
  // TODO
}
  }
}