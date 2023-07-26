/* 4-2. TabBar */

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
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final _tab = <Tab>[
    // タブバーの表示
    const Tab(text: "Railway", icon: Icon(Icons.directions_railway)),
    const Tab(text: "Subway", icon: Icon(Icons.directions_subway)),
    const Tab(text: "Walk", icon: Icon(Icons.directions_walk)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // タブを制御
      length: _tab.length, // タブの数
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Live!人工知能"),
          bottom: TabBar(
            // タブバー
            tabs: _tab,
          ),
        ),
        body: const TabBarView(// 表示画面のウィジェット一覧を渡す
            children: <Widget>[
          TabPage(title: "Railway", icon: Icons.directions_railway),
          TabPage(title: "Subway", icon: Icons.directions_subway),
          TabPage(title: "Walk", icon: Icons.directions_walk),
        ]),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final IconData? icon;
  final String? title;

  const TabPage({Key? key, this.icon,  this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle =
        Theme.of(context).textTheme.headline4!; // 文字のスタイル
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 72.0, color: textStyle.color),
          // final String? title;の場合、titleがnullの可能性もあるという設計なので、nullチェックをいれたほうが望ましい。
          // titleが絶対入る場合は、final String title;と定義し、required this.titleにしてもよい。
          if (title != null) Text(title!, style: textStyle),
        ],
      ),
    );
  }
}
