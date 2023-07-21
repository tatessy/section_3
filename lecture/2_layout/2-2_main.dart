/* 2-2. RowとColumn */

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(  // 列
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container( color: Colors.blue, width: 100, height:100 ),
              Container( color: Colors.red, width: 100, height:100 ),
              Container( color: Colors.yellow, width: 100, height:100 ),
            ],
          ),
          Column(  // 列
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container( color: Colors.green, width: 100, height:100 ),
              Container( color: Colors.orange, width: 100, height:100 ),
              Container( color: Colors.white, width: 100, height:100 ),
            ],
          ),
        ],
      ),
    );
  }
}
