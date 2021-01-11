import 'package:flutter/material.dart';
import 'package:quizapp/result.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var _questionIndex = 0;
    final _questions = [
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

    void _answerQuestion() {
      // var aBool = true;
      // aBool = false;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
      if (_questionIndex < _questions.length) {
        print('We have more questions');
      } else {
        print('No more questions');
      }
    }

    //questions = []; does not work if question is const type
    // var dummy = ['Hello'];
    // dummy.add('Murli');
    // print(dummy);
    // dummy=[];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex,questions: _questions,)
            : Result(),
      ),
    );
  }
}
