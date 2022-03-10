import 'package:flutter/material.dart';
import 'package:flutter_application_2/Quiz/PinaColantua.dart';
import 'Mojito.dart';
import 'VodkaMartini.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  String cocktail = '';

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore == 1) {
      resultText = 'Your favorite cocktail is Vodka Martini!';
      cocktail = 'Vodka Martini';
      print(resultScore);
    } else if (resultScore == 2) {
      resultText = 'Your favorite cocktail is Mojito!';
      cocktail = 'Mojito';
      print(resultScore);
    } else if (resultScore == 3) {
      resultText = 'Your favorite cocktail is Pina Colantua!';
      cocktail = 'Pina Colantua';
    } else {
      resultText = 'Your favourite cocktail is Daquiri';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          /*Text(
            '$cocktail',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), */ //Text
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
          ElevatedButton(
            child: Text('$cocktail'),
            onPressed: () {
              if (resultScore == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Mojito()));
              } else if (resultScore == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VodkaMartini()));
              } else if (resultScore == 3) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PinaColantua()));
              } else {}
            },
          )
        ],
      ),
    );
  }
}
