import 'package:flutter/material.dart';
import '../Recipes.dart';

class Result extends StatelessWidget {
  final int rS;
  final VoidCallback resetHandler;
  String cocktail = '';

  Result(this.rS, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (rS == 112 || rS == 121 || rS == 122) {
      resultText = 'Your favorite cocktail is Mojito!';
      cocktail = 'Mojito';
      print(rS);
    } else if (rS == 111 || rS == 112 || rS == 113) {
      resultText = 'Your favorite cocktail is Vodka Martini!';
      cocktail = 'Vodka Martini';
      print(rS);
    } else if (rS == 121 || rS == 122 || rS == 123) {
      resultText = 'Your favorite cocktail is Pina Colantua!';
      cocktail = 'Pina Colantua';
    } else if (rS == 131 || rS == 132 || rS == 133) {
      resultText = 'Your favorite cocktail is MaiTai!';
      cocktail = 'MaiTai';
      print(rS);
    } else if (rS == 211 || rS == 212 || rS == 213) {
      resultText = 'Your favorite cocktail is Cosmopolitan!';
      cocktail = 'Cosmopolitan';
      print(rS);
    } else if (rS == 221 || rS == 222 || rS == 223) {
      resultText = 'Your favorite cocktail is Margarita!';
      cocktail = 'Margarita';
    } else if (rS == 311 || rS == 312 || rS == 313) {
      resultText = 'Your favorite cocktail is Flutter!';
      cocktail = 'Flutter';
      print(rS);
    } else if (rS == 321 || rS == 322 || rS == 323) {
      resultText = 'Your favorite cocktail is Bloody Mary!';
      cocktail = 'Bloody Mary';
      print(rS);
    } else if (rS == 331 || rS == 332 || rS == 333) {
      resultText = 'Your favorite cocktail is Negroni!';
      cocktail = 'Negroni';
    } else {
      resultText = 'Drink a beer';
      cocktail = '';
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
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Color.fromARGB(255, 255, 0, 128),
            onPressed: resetHandler,
          ),
          ElevatedButton(
            child: Text('$cocktail'),
            onPressed: () {
              if (rS == 112 || rS == 121 || rS == 122) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Mojito()));
              } else if (rS == 111 || rS == 112 || rS == 113) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VodkaMartini()));
              } else if (rS == 121 || rS == 122 || rS == 123) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PinaColantua()));
              } else if (rS == 131 || rS == 132 || rS == 133) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MaiTai()));
              } else if (rS == 211 || rS == 212 || rS == 213) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cosmopolitan()));
              } else if (rS == 221 || rS == 222 || rS == 223) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Margarita()));
              } else if (rS == 311 || rS == 312 || rS == 313) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Flutter()));
              } else if (rS == 321 || rS == 322 || rS == 323) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BloodyMary()));
              } else if (rS == 331 || rS == 332 || rS == 333) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Negroni()));
              }
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 0, 128),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
