import 'package:flutter/material.dart';
import 'package:startup_namer/util/random_word.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const RandomWords(),
    ),
  );
}
