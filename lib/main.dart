import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _qns = const [
    {
      'qnText': 'What\'s your fav color?',
      'ans': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'qnText': 'What\'s your fav animal?',
      'ans': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 8},
        {'text': 'Lion', 'score': 4},
        {'text': 'Tiger', 'score': 10},
      ],
    },
    {
      'qnText': 'What\'s your fav Anime?',
      'ans': [
        {'text': 'One Piece', 'score': 1},
        {'text': 'Naruto', 'score': 3},
        {'text': 'Bleach', 'score': 5},
        {'text': 'DBS', 'score': 8},
      ],
    },
  ];
  var _qnIndex = 0;
  var _totScore = 0;

  void _resetQ() {
    setState(() {
      _qnIndex = 0;
      _totScore = 0;
    });
  }

  void _ansQn(int score) {
    _totScore += score;

    setState(() {
      _qnIndex += 1;
    });
    print(_qnIndex);
    if (_qnIndex < _qns.length) {
      print("We have moore qns!!");
    } else {
      print('No more qns!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Akash App'),
        ),
        body: _qnIndex < _qns.length
            ? Quiz(
                ansQn: _ansQn,
                qnIndex: _qnIndex,
                qns: _qns,
              )
            : Result(
                resScore: _totScore,
                rstHandler: _resetQ,
              ),
      ),
    );
  }
}
