import 'package:flutter/material.dart';
import 'page/ApiPage.dart';
import 'page/PagingApiPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder> {
        // 这里可以定义静态路由，不能传递参数
        '/api': (_) => new ApiPage(),
        '/paging_api': (_) => new PagingApiPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络框架接口Demo'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('普通接口',textAlign: TextAlign.center,),
            onTap: () {
              Navigator.of(context).pushNamed('/api');
            },
          ),
          ListTile(
            title: Text('分页接口',textAlign: TextAlign.center,),
            onTap: () {
              Navigator.of(context).pushNamed('/paging_api');
            },
          )
        ],
      ),
    );
  }
}
