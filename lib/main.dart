import "package:flutter/material.dart";
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;
  void answerQuestion() {
    setState(() {
      qIndex += 1;
    });

    print('Question answered');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal ??'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Question(question[qIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () {
              print('Ans 3 chosen');
            },
          )
        ],
      ),
    ));
  }
}
