import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  final questionMap = [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Black"},
        {"text": "Red"},
        {"text": "Yellow"},
        {"text": "Blue"},
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Tiger"},
        {"text": "Dog"},
        {"text": "Cat"},
        {"text": "Panda"},
      ]
    },
    {
      "questionText": "What's your favourite food?",
      "answers": [
        {"text": "Pizza"},
        {"text": "Pasta"},
        {"text": "Chicken Wings"},
        {"text": "Noodles"},
      ]
    }
  ];

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void changeQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App!"),
        ),
        body: _questionIndex < questionMap.length
            ? Quiz(
                questionMap: questionMap,
                questionIndex: _questionIndex,
                questionHandler: changeQuestion,
              )
            : Result(resetQuiz),
      ),
    );
  }
}
