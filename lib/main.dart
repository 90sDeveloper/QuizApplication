import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>
{
  var _questionIndex = 0;
  void _answer(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    }
  @override
  Widget build(BuildContext context) {
    
    var questions = [
      'What\'s your name',
      'What\'s your DOB'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(child: Text('Ans 1'), onPressed: _answer),
          RaisedButton(child: Text('Ans 2'), onPressed: _answer),
          RaisedButton(child: Text('Ans 3'), onPressed: _answer),
        ]),
      ),
    );
  }
}