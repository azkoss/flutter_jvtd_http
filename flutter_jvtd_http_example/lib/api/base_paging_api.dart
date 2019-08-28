import 'package:flutter_jvtd_http/flutter_jvtd_http.dart';
import 'base_api.dart';

//分页接口基础
abstract class BasePagingApi<D> extends BaseApi<D> {
  bool _isLoadMore = false;
  int pageNum = 1;
  int pageSize = 10;

  Future<HttpData<D>> refresh({
    Map<String, dynamic> params,
    int retry = 0,
    OnProgress onProgress,
  }) async {
    if (params == null) params = Map();
    _isLoadMore = false;
    pageNum = 1;
    params['pageNumber'] = pageNum.toString();
    params['pageSize'] = pageSize.toString();
    return start(params: params, retry: retry, onProgress: onProgress);
  }

  Future<HttpData<D>> loadMore({
    Map<String, dynamic> params,
    int retry = 0,
    OnProgress onProgress,
  }) async {
    if (params == null) params = Map();
    _isLoadMore = true;
    pageNum++;
    params['pageNumber'] = pageNum.toString();
    params['pageSize'] = pageSize.toString();
    return start(params: params, retry: retry, onProgress: onProgress);
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
