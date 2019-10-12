import 'package:flutter/material.dart';
import 'package:myflutter_test_4vscode/EnglishWordPage.dart';
import 'package:myflutter_test_4vscode/HomePage.dart';
import 'package:myflutter_test_4vscode/secondPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/", //名为"/"的路由作为应用的home(首页)
      routes: {
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page1'), //注册首页路由
        "new_page": (context) => SecondPage(),
        "english_word": (context) => EnglishWordPage(),
      },
      // home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
