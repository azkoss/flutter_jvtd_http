import 'package:flutter_jvtd_http/flutter_jvtd_http.dart';
import 'package:flutter/material.dart';
import 'dart:io';
//普通接口基类
abstract class BaseApi<D> extends SimpleApi<D> {
  final BuildContext context;

  BaseApi({this.context});

  @override
  String onUrl(Map<String, dynamic> params) =>
      "http://greenshoe-api.weiyingjia.org/api/" + apiMethod(params);

  @protected
  String apiMethod(Map<String, dynamic> params);

  @override
  void onFillParams(Map<String, dynamic> data, Map<String, dynamic> params) {
    data["version"] = "V1.0";
    data["data"] = params;
  }

  @override
  bool onResponseResult(response) {
    return response['code'] == '200' || response['code'] == 200;
  }

  @override
  String onRequestFailedMessage(response, HttpData<D> data) {
    return response['msg'];
  }

  @override
  String onRequestSuccessMessage(response, HttpData<D> data) {
    return response['msg'];
  }

  @override
  String onParamsError(Map<String, dynamic> params) {
    return
        '接口参数错误';
  }

  @override
  String onParseFailed(HttpData<D> data) {
    return '数据解析失败';
  }

  @override
  String onNetworkError(HttpData<D> data) {
    return '暂无网络连接，请链接网络后重试';
  }

  @override
  String onNetworkRequestFailed(HttpData<D> data) {
    return '网络异常，请稍后重试';
  }

  @override
  HttpMethod get httpMethod => HttpMethod.post;

  @override
  void onConfigOptions(Options options, Map<String, dynamic> params) {
    options.contentType = ContentType.json;
  }
}
