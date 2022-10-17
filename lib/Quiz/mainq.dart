import 'package:flutter/material.dart';
import '../HomePage.dart';
import './quiz.dart';
import './result.dart';
import '../Favorites/mainf.dart';
import '../ShoppingList.dart';

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<Quizz> {
  final _questions = const [
    {
      'questionText': 'Q1. Which is your favorite season?',
      'answers': [
        {'text': 'Summer/Spring', 'score': 10},
        {'text': 'Winter', 'score': 20},
        {'text': 'Autumn', 'score': 30},
      ],
    },
    {
      'questionText': 'Q2. Which taste do you prefer?',
      'answers': [
        {'text': 'Sweet', 'score': 100},
        {'text': 'Spicy', 'score': 200},
        {'text': 'Sour', 'score': 300},
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
      title: 'Cocktailer',
      theme: ThemeData(
          fontFamily: 'RockSalt',
          primarySwatch: Colors.deepOrange,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
            actionsIconTheme:
                IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
            centerTitle: true,
            elevation: 15,
            titleTextStyle: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontFamily: 'RockSalt',
              color: Color.fromARGB(255, 230, 57, 18),
            ),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cocktailer'),
          titleTextStyle: const TextStyle(
            fontSize: 30.0,
            fontFamily: 'RockSalt',
            color: Color.fromARGB(255, 230, 57, 18),
          ),
          centerTitle: true,
          actionsIconTheme:
              const IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
          backgroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          backgroundColor: const Color.fromARGB(255, 230, 57, 18),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 221, 19, 4),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favorites()));
                  }),
              const Spacer(),
              IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(133, 148, 55, 12),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShoppingList()));
                  })
            ],
          ),
          shape: const CircularNotchedRectangle(),
        ),
        body: Center(
            child: Stack(children: <Widget>[
          const Image(
            image: AssetImage('assets/images/bulb.jpg'),
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz),
          )
        ])),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
