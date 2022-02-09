import 'package:flutter/material.dart';
import 'package:startup_namer/util/random_word.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    ),
  );
}
