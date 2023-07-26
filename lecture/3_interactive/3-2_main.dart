/* 3-2. テキストの入力 */

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Live!人工知能"),
        ),
        body: const Center(
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  String _text = '';

  void _handleText(String e) {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _text = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          _text,
          style: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 30.0,
          ),
        ),
        TextField(
          // テキストを表示
          style: const TextStyle(color: Colors.red),
          onChanged: _handleText,
        ),
      ],
    );
  }
}
