import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 40, color: Colors.indigoAccent),
        textAlign: TextAlign.center,
      ),
    );
  }
}
