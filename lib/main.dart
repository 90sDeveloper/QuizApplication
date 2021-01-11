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
  //questions
  final _questions = [
    {
      'questionText': 'What\'s your name',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 6}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 3},
        {'text': 'Birds', 'score': 6},
        {'text': 'Horse', 'score': 8}
      ],
    },
    {
      'questionText': 'What\'s your country',
      'answers': [
        {'text': 'India', 'score': 8},
        {'text': 'Australia', 'score': 4},
        {'text': 'UK', 'score': 7},
        {'text': 'China', 'score': 0}
      ],
    },
  ];
  //initialization
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      var _questionIndex = 0;
      var _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalscore += score;
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

  @override
  Widget build(BuildContext context) {
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
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
