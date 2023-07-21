/* 4-1. 画面遷移 */

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => const MainPage(),  // 最初のページ
        '/subpage': (BuildContext context) => SubPage()  // 次のページ
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mainページ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Main"),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("/subpage"),
              child: const Text("Subページへ"),
            )
          ],
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subページ"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Sub"),
              RaisedButton(
                onPressed: () => Navigator.of(context).pop(),  // この画面を取り除く
                child: Text("戻る"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
