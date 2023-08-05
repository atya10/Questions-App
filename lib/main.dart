import 'quiz.dart';
import 'result.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {

  bool isSwitched = false;

  int _totalScore = 0;
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favorite game?',
      'answers': [
        {'text': 'GTA', 'score': 10},
        {'text': 'PUBG', 'score': 20},
        {'text': 'CSGO', 'score': 30},
        {'text': 'IGI', 'score': 40},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(
                color: w,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Switch(value: isSwitched,
                onChanged: (value) {
              setState((){
                isSwitched = value;
                if (isSwitched == true){b=Colors.white; w=Colors.black;}
                if (isSwitched == false){b=Colors.black; w=Colors.white;}
              });
            },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.white,
            ),
          ],
        ),
        body: Container(
          color: w,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
      ),
    );
  }
}
//...(_question[_questionIndex]['answers'] as List<String>).map((answer) => Answer(answerQuestion, answer),).toList(),
