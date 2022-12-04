import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selHand;
  final String ansText;
  Answer(this.selHand, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(ansText),
        onPressed: selHand,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(
            TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
