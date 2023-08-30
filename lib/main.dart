import 'package:flutter/material.dart';
import 'package:quizapp/result.dart';
import 'quiz.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 1},
        {'text': 'Yellow', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 17},
        {'text': 'Cat', 'score': 5},
        {'text': 'Zebra', 'score': 10},
        {'text': 'Mouse', 'score': 3},
      ],
    },
    {
      'questionText': 'Who is your favorite fighter?',
      'answers': [
        {'text': 'Aang', 'score': 7},
        {'text': 'Zuko', 'score': 7},
        {'text': 'Sokka', 'score': 12},
        {'text': 'Toph', 'score': 15},
      ],
    }
  ];
  var _questionNumber = 0;
  var _totalScore = 0;
  void _answers(int score) {
    _totalScore += score;
    setState(() {
      _questionNumber += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First Quiz App"),
          backgroundColor: Colors.blue.shade900,
        ),
        body: _questionNumber < _questions.length
            ? Quiz(
                answers: _answers,
                questionNumber: _questionNumber,
                questions: _questions)
            : Result(_totalScore, resetQuiz),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
