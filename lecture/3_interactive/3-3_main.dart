/* 3-3. スイッチ */

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
  bool _active = false;

  void _changeSwitch(bool e) {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _active = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Icon(
            Icons.thumb_up,
            color: _active ? Colors.orange : Colors.grey,
            size: 100.0,
          ),
        ),
        Switch(
          // スイッチ
          value: _active,
          onChanged: _changeSwitch,
        )
      ],
    );
  }
}
