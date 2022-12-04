import 'dart:ffi';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function ansQn;
  final List<Map<String, Object>> qns;
  final int qnIndex;

  Quiz({
    required this.qns,
    required this.ansQn,
    required this.qnIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          qns[qnIndex]['qnText'] as String,
        ),
        ...(qns[qnIndex]['ans'] as List<Map<String, Object>>).map((ans) {
          return Answer(() => ansQn(ans['score']), ans['text'] as String);
        }).toList(),
      ],
    );
  }
}
