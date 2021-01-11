import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Yeah! You did it. Fantastic..';
    } else if (resultScore <= 13) {
      resultText = 'Yeah! You did it. Nice..';
    } else if (resultScore <= 18) {
      resultText = 'Yeah! You did it. Well..';
    } else {
      resultText = 'Yeah! Totally bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz'),
            onPressed: resetHandler,
            textColor: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
