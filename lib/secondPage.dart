import 'package:flutter/material.dart';
import 'package:myflutter_test_4vscode/TipRoute.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('secondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('this is secondpage'),
            RaisedButton(
              onPressed: () async {
                // 路由跳转并传值
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return TipRoute(text: '我是提示XXXXX');
                }));
                print('路由返回值 $result');
              },
              child: Text('打开提示页'),
            ),
          ],
        ),
      ),
    );
  }
}


