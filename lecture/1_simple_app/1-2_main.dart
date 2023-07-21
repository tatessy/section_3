/* 1-2. 外部パッケージの導入 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
//  pubspec.yamlにenglish_words: ^4.0.0を追加して、flutter pub getを実行しておく

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {  // 
 const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "My Simple App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Live!人工知能"),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
