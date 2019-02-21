part 'get_code_res_bean.g.dart';

class GetCodeResBean{
  String verifyCode;

  GetCodeResBean({this.verifyCode});

  factory GetCodeResBean.fromJson(Map<String, dynamic> json) =>
      _$GetCodeResBeanFromJson(json);

  Map<String, dynamic> toJson() => _$GetCodeResBeanToJson(this);
}