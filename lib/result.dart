import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  const Result(this.resultScore, this.reset, {super.key});
  String get resultPhrase {
    var resultText = "";
    if (resultScore <= 15) {
      resultText = 'You are good';
    } else if (resultScore <= 20) {
      resultText = 'You are very good';
    } else if (resultScore <= 30) {
      resultText = 'You are extremely good';
    } else {
      resultText = 'You are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 40,
            ),
          ),
          TextButton(
            onPressed: reset,
            child: Text(
              "Restart Quiz",
              style: TextStyle(color: Colors.blue[900]),
            ),
          )
        ],
      ),
    );
  }
}
