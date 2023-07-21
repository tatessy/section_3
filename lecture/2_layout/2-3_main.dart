/* 2-3. Expanded */

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Row(
        children: <Widget>[
          Expanded(flex: 1, child: Container(color: Colors.red)),
          Expanded(
            flex: 2,
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: 3,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
