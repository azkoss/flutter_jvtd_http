import 'dart:io';
import 'package:flutter_jvtd_http/flutter_jvtd_http.dart';

void main() async {
  Map<String, dynamic> data2 = Map();
  data2['phone'] = '1345135111';
  await TestApi().start(params: data2).then((data) {
    if (data.success) {
      jvtdLog('success', data.message);
    } else {
      jvtdLog('failed', data.message);
    }
  });
}

class TestApi extends SimpleApi<Null> {
  @override
  Null onExtractResult(resultData, HttpData<Null> data) {}

  @override
  String onUrl(Map<String, dynamic> params) =>
      "http://greenshoe-api.weiyingjia.org/api/user/verifyCode";

  @override
  String responseResult() {
    return 'result';
  }

  @override
  void onFillParams(Map<String, dynamic> data, Map<String, dynamic> params) {
    data["version"] = "V1.0";
    data["data"] = params;
  }

  @override
  bool onResponseResult(response) {
    return response['code'] == 200;
  }

  @override
  String onRequestFailedMessage(response, HttpData<Null> data) {
    return response['msg'];
  }

  @override
  String onRequestSuccessMessage(response, HttpData<Null> data) {
    return response['msg'];
  }

  @override
  HttpMethod get httpMethod => HttpMethod.post;

  @override
  void onConfigOptions(Options options, Map<String, dynamic> params) {
    options.contentType = ContentType.json;
  }
}
