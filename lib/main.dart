import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your name',
        'answers': ['Black', 'Red', 'Green', 'Yellow'],
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': ['Dog', 'Cat', 'Birds', 'Horse'],
      },
      {
        'questionText': 'What\'s your country',
        'answers': ['India', 'Australia', 'UK', 'China'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answer, answer);
          }).toList()
        ]),
      ),
    );
  }
}
