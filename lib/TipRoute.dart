import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  final String text;

  TipRoute({Key key, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('上个路由传过来的值: $text'),
              RaisedButton(
                onPressed: () => Navigator.pop(context, '我是返回值'),
                child: Text('返回'),
              )
            ],
          ),
        ),
      ),
    );
  }
}