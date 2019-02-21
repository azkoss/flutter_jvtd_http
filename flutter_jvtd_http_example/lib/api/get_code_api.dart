
import 'package:flutter_jvtd_http/flutter_jvtd_http.dart';
import 'base_api.dart';
import '../bean/get_code_res_bean.dart';
export '../bean/get_code_res_bean.dart';
export '../bean/get_code_req_bean.dart';

class GetCodeApi extends BaseApi<GetCodeResBean>{
  @override
  String apiMethod(Map<String, dynamic> params) {
    return 'user/verifyCode';
  }

  @override
  GetCodeResBean onExtractResult(resultData, HttpData<GetCodeResBean> data) {
    return GetCodeResBean.fromJson(resultData);
  }
}