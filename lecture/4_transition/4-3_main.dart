/* 4-3. Drawer */

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live!人工知能"),
      ),
      drawer: Drawer(
        // Drawerの配置
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                // Boxによる装飾
                color: Colors.blue,
              ),
              child: Text("ヘッダーです。"),
            ),
            ListTile(
              title: Text("アイテムその1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("アイテムその2"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("アイテムその3"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
