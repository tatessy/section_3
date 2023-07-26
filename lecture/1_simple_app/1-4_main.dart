/* 1-4. ListView */

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomWordsState extends State<RandomWords> {

  // ListViewのWidgetを作るメソッド
  Widget _buildSuggestions() {
    final wordPairs = <WordPair>[];
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;  
        if (index >= wordPairs.length) {
          wordPairs.addAll(generateWordPairs().take(10));
        }
        return _buildRow(wordPairs[index]);
      }
    );
  }

  // 単語のペアから、形式を整えた行のWidgetを作るメソッド
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live!人工知能"),
      ),
      body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);
  @override
  RandomWordsState createState() => RandomWordsState();
}


class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Simple App",
      home: RandomWords()
    );
  }
}
