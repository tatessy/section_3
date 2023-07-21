/* 3-1. ボタン */

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
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  int _count = 0;

  void _handlePressed() {
    setState(() {  // 状態を保持する変数を変更する処理は、setState内に記述する
      _count++;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "$_count",
          style: const TextStyle(
            color:Colors.blueAccent,
            fontSize: 30.0,
          ),
        ),
        ElevatedButton(
          onPressed: _handlePressed,
          style: ButtonStyle(
            
          ),
        
          // color: Colors.blue,
          child: const Text(
            "いいね!",
            style: TextStyle(
                color:Colors.white,
                fontSize: 20.0
            ),
          ),
        )
      ],
    );
  }
}
