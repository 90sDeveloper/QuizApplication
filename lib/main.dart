import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
}
class MyAppState extends State
{
  var questionIndex = 0;
  void answer(){
      questionIndex = questionIndex + 1;
      print(questionIndex);
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
          Text(
            questions[questionIndex],
          ),
          RaisedButton(child: Text('Ans 1'), onPressed: answer),
          RaisedButton(child: Text('Ans 2'), onPressed: answer),
          RaisedButton(child: Text('Ans 3'), onPressed: answer),
        ]),
      ),
    );
  }
}