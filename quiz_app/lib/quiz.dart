import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionMap;
  final int questionIndex;
  final VoidCallback questionHandler;

  Quiz({
    Key? key,
    required this.questionMap,
    required this.questionIndex,
    required this.questionHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionMap[questionIndex]["questionText"],
        ),
        ...(questionMap[questionIndex]["answers"] as List<Map<String, String>>)
            .map((answerChoice) {
          return Answer(
            () => questionHandler(),
            answerChoice["text"] as String,
          );
        }).toList()
      ],
    );
  }
}
