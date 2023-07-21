/* 2-1. Container */

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300.0,
            height: 300.0,
            alignment: Alignment.center,
            child: const Text("Live!人工知能"),
          ),
        ),
      ),
    );
  }
}
