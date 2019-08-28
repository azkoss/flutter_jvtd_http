import 'package:flutter/material.dart';
import '../api/api.dart';

class ApiPage extends StatefulWidget {
  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  GetCodeReqBean _getCodeReqBean;
  GetCodeApi _getCodeApi;
  GetCodeResBean _getCodeResBean;

  @override
  void initState() {
    super.initState();
    _getCodeReqBean = GetCodeReqBean(phone: '13451341117');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('普通接口'),
        centerTitle: true,
        actions: <Widget>[
          MaterialButton(onPressed: _getCode, child: Text('调用'),textColor: Colors.white,minWidth: 20,),
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
                  Text(_getCodeReqBean.toJson().toString()),
                  SizedBox(height: 16),
                  Text('接口接收参数:'),
                  SizedBox(height: 8),
                  _getCodeApi == null ? Text('请调用接口') : Text(_getCodeResBean != null ? _getCodeResBean.toJson().toString() : '接口调用失败'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _getCode() {
    if (_getCodeApi == null) _getCodeApi = GetCodeApi();
    _getCodeApi.start(params: _getCodeReqBean.toJson()).then((value) {
      if (value.success) {
        _getCodeResBean = value.result;
        setState(() {});
      } else {
        _getCodeResBean = null;
      }
    });
  }
}
