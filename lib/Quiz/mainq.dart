import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Quizz> {
  final _questions = const [
    {
      'questionText': 'Q1. Which is your favorite season?',
      'answers': [
        {'text': 'Summer/Spring', 'score': 0},
        {'text': 'Winter', 'score': 0},
        {'text': 'Autumn', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Which taste do you prefer?',
      'answers': [
        {'text': 'Sweet', 'score': 0},
        {'text': 'Spicy', 'score': 0},
        {'text': 'Sour', 'score': 0},
      ],
    },
    {
      'questionText': ' Q3. Which kind of alcohol do you like?',
      'answers': [
        {'text': 'Vodka', 'score': 1},
        {'text': 'Rum', 'score': 2},
        {'text': 'Tequila', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cocktailer'),
          backgroundColor: Colors.deepOrange,
        ),

        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
