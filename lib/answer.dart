import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answersList;
  final String answer;
  const Answer(this.answersList, this.answer, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          textStyle: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        onPressed: answersList,
        child: Text(answer),
      ),
    );
  }
}
