import 'package:flutter/material.dart';
import '../api/api.dart';

class PagingApiPage extends StatefulWidget {
  @override
  _PagingApiPageState createState() => _PagingApiPageState();
}

class _PagingApiPageState extends State<PagingApiPage> {
  GetLineListBean _getLineListBean;
  GetLineListApi _getLineListApi;
  List<LineBean> _list;

  @override
  void initState() {
    super.initState();
    _getLineListBean = GetLineListBean(destination: '', interestType: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('普通接口'),
        centerTitle: true,
        actions: <Widget>[
          MaterialButton(
            onPressed: _refresh,
            child: Text('刷新'),
            textColor: Colors.white,
            minWidth: 20,
          ),
          MaterialButton(
            onPressed: _loadMore,
            child: Text('加载'),
            textColor: Colors.white,
            minWidth: 20,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text('接口传入参数:'),
                  SizedBox(height: 8),
                  Text(_getLineListBean.toJson().toString()),
                  SizedBox(height: 16),
                  Text('接口接收参数:'),
                  SizedBox(height: 8),
                  _getLineListApi == null
                      ? Text('请调用接口')
                      : Text(_list != null ? _getListString() : '接口调用失败'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String _getListString() {
    String _listStr = '';
    _list.forEach((bean) {
      _listStr += bean.toJson().toString() + '\n\n\n\n';
    });
    return _listStr;
  }

  void _refresh() {
    if (_getLineListApi == null) {
      _getLineListApi = GetLineListApi();
      _getLineListBean = GetLineListBean(destination: '', interestType: '');
    }
    _getLineListApi.refresh(params: _getLineListBean.toJson()).then((value) {
      if (value.success) {
        _list = value.result;
      } else {
        _list = null;
      }
      setState(() {});
    });
  }

  void _loadMore() {
    if (_getLineListApi == null) {
      _getLineListApi = GetLineListApi();
      _getLineListBean = GetLineListBean(destination: '', interestType: '');
    }
    _getLineListApi.refresh(params: _getLineListBean.toJson()).then((value) {
      if (value.success) {
        _list.addAll(value.result);
      } else {
        _list = null;
      }
      setState(() {});
    });
  }
}
