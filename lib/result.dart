import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resScore;
  final Function() rstHandler;
  Result({required this.resScore, required this.rstHandler});

  String get resPhrase {
    String result;
    if (resScore <= 8) {
      result = 'You have a great taste and innocence';
    } else if (resScore <= 12) {
      result = 'Pretty Likeable!!';
    } else if (resScore <= 16) {
      result = "Strange Personality You have!!";
    } else {
      result = "You are NUTS Bruh.. Get a checkup!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: rstHandler,
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}
