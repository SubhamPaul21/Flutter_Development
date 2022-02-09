import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WordPair _randomWord = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Name Generator"),
      ),
      body: Center(
        child: Text(
          _randomWord.asPascalCase,
        ),
      ),
    );
  }
}
