part 'get_code_req_bean.g.dart';

class GetCodeReqBean{
  String phone;

  GetCodeReqBean({this.phone});

  factory GetCodeReqBean.fromJson(Map<String, dynamic> json) =>
      _$GetCodeReqBeanFromJson(json);

  Map<String, dynamic> toJson() => _$GetCodeReqBeanToJson(this);
}