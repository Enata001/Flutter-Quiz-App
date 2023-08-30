import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answers;
  final int questionNumber;

  const Quiz(
      {super.key,
      required this.answers,
      required this.questionNumber,
      required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionNumber]['questionText'].toString(),
        ),
        ...(questions[questionNumber]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                () => answers(answer['score']), answer['text'] as String))
            .toList(),
      ],
    );
  }
}
