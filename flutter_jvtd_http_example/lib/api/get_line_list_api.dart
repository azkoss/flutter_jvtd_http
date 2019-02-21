import 'base_paging_api.dart';
import 'package:flutter_jvtd_http/flutter_jvtd_http.dart';
import '../bean/line_bean.dart';
export '../bean/line_bean.dart';
export '../bean/get_line_list_bean.dart';

class GetLineListApi extends BasePagingApi<List<LineBean>> {
  @override
  String apiMethod(Map<String, dynamic> params) {
    return 'route/queryRouteList';
  }

  @override
  List<LineBean> onExtractResult(resultData, HttpData<List<LineBean>> data) {
    List resultList = resultData;
    return resultList.map((item) {
      return LineBean.fromJson(item);
    }).toList();
  }
}
