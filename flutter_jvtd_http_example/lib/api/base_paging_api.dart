import 'package:flutter_jvtd_http/flutter_jvtd_http.dart';
import 'base_api.dart';

//分页接口基础
abstract class BasePagingApi<D> extends BaseApi<D> {
  bool _isLoadMore = false;
  int pageNum = 1;
  int pageSize = 10;

  Future<HttpData<D>> refresh(
      [Map<String, dynamic> params,
      int retry = 0,
      OnProgress onProgress]) async {
    if (params == null) params = Map();
    pageNum = 1;
    params['pageNumber'] = pageNum.toString();
    params['pageSize'] = pageSize.toString();
    return start(params, retry, onProgress);
  }

  Future<HttpData<D>> loadMore(
      [Map<String, dynamic> params,
      int retry = 0,
      OnProgress onProgress]) async {
    if (params == null) params = Map();
    pageNum++;
    params['pageNumber'] = pageNum.toString();
    params['pageSize'] = pageSize.toString();
    return start(params, retry, onProgress);
  }

  @override
  void onFailed(HttpData<D> data) {
    super.onFailed(data);
    if (_isLoadMore) {
      pageNum--;
    } else {
      pageNum = 1;
    }
  }
}
