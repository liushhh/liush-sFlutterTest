import 'package:flutter/material.dart';
import 'package:myflutter_test_4vscode/EnglishWordPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center, //
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            EnglishWordPage(),
            FlatButton(
              child: Text('open new route'),
              textColor: Colors.blue,
              onPressed: () {
                // 跳转命名路由
                Navigator.pushNamed(context, "new_page");
                // 跳转新页面
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return NewRoute();
                // }));
              },
            ),
            new Image.asset('assets/images/bell.png'),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
