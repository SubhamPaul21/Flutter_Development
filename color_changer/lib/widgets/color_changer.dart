import 'dart:ffi';

import "package:flutter/material.dart";
import 'dart:math';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  // variable for background color
  Color _backgroundColor = Colors.white;
  // creating object of Random Class
  final Random _random = Random();

  // method to change background color in stateful widget
  void _changeColor(context) {
    setState(() {
      _backgroundColor = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextDouble(),
      );
    });
    // ignore: avoid_print
    print("Color: $_backgroundColor");
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          "Hurray, you changed the color :D ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        duration: Duration(
          milliseconds: 500,
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _changeColor(context),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: _backgroundColor,
        child: const Center(
          child: Text(
            "Hey there",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
