import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuizHandler;

  Result(this.resetQuizHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "You did it!",
            style: TextStyle(
              fontSize: 25,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: resetQuizHandler,
            child: Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}
