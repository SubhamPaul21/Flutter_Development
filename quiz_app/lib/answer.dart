import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answerChoice;

  Answer(this.answerHandler, this.answerChoice);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: answerHandler,
        child: Text(answerChoice),
      ),
    );
  }
}
