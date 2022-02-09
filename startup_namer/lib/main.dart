import 'package:flutter/material.dart';
import 'package:startup_namer/util/random_word.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Name Generator"),
      ),
      body: const Center(
        child: RandomWords(),
      ),
    );
  }
}
