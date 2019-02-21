import 'package:dio/dio.dart';
import 'dart:io';

/// 全局使用的[Dio]请求对象
Dio dio = Dio(BaseOptions(
  connectTimeout: 30000,
  receiveTimeout: 30000,
  contentType: ContentType.parse("application/x-www-form-urlencoded"),
));
