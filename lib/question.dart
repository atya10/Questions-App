import 'package:flutter/material.dart';
import 'main.dart';
class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 27,
          color: b,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
