part 'get_line_list_bean.g.dart';

class GetLineListBean{
  String destination;
  String interestType;

  GetLineListBean({this.destination, this.interestType});

  factory GetLineListBean.fromJson(Map<String, dynamic> json) =>
      _$GetLineListBeanFromJson(json);

  Map<String, dynamic> toJson() => _$GetLineListBeanToJson(this);
}