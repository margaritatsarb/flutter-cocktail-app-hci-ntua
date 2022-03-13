import 'package:flutter/material.dart';
import '../Recipes.dart';

class Result extends StatelessWidget {
  final int rS;
  final VoidCallback resetHandler;
  String cocktail = '';

  Result(this.rS, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (rS == 121) {
      resultText = 'Your favorite cocktail is Salted caramel espresso martini!';
      cocktail = 'Salted caramel espresso martini';
      print(rS);
    } else if (rS == 122) {
      resultText = 'Your favorite cocktail is Instant rum eggnog!';
      cocktail = 'Instant rum eggnog';
      print(rS);
    } else if (rS == 123) {
      resultText = 'Your favorite cocktail is Hazelnut espresso martini!';
      cocktail = 'Hazelnut espresso martini';
    } else if (rS == 221) {
      resultText = 'Your favorite cocktail is Sweet Heat!';
      cocktail = 'Sweet Heat';
      print(rS);
    } else if (rS == 222) {
      resultText = 'Your favorite cocktail is Spiced Hurricane!';
      cocktail = 'Spiced Hurricane';
      print(rS);
    } else if (rS == 223) {
      resultText = 'Your favorite cocktail is Tequila Cocoa Caliente!';
      cocktail = 'Tequila Cocoa Caliente';
    } else if (rS == 321) {
      resultText = 'Your favorite cocktail is Queens Hotels Chow!';
      cocktail = 'Queens Hotels Chow';
      print(rS);
    } else if (rS == 322) {
      resultText = 'Your favorite cocktail is Lady grey rum fizz!';
      cocktail = 'Lady grey rum fizz';
      print(rS);
    } else if (rS == 323) {
      resultText = 'Your favorite cocktail is Smoke and ginger sours!';
      cocktail = 'Smoke and ginger sours';
    } else if (rS == 111) {
      resultText = 'Your favorite cocktail is Cosmopolitan!';
      cocktail = 'Cosmopolitan';
      print(rS);
    } else if (rS == 112) {
      resultText = 'Your favorite cocktail is Pina Colantua!';
      cocktail = 'Pina Colantua';
      print(rS);
    } else if (rS == 113) {
      resultText = 'Your favorite cocktail is Flutter!';
      cocktail = 'Flutter';
    } else if (rS == 211) {
      resultText = 'Your favorite cocktail is Mango Spice!';
      cocktail = 'Mango Spice';
      print(rS);
    } else if (rS == 212) {
      resultText = 'Your favorite cocktail is Firecracker!';
      cocktail = 'Firecracker';
      print(rS);
    } else if (rS == 213) {
      resultText = 'Your favorite cocktail is Jalapeno Margarita!';
      cocktail = 'Jalapeno Margarita';
    } else if (rS == 311) {
      resultText = 'Your favorite cocktail is Lemon Drop Martini!';
      cocktail = 'Lemon Drop Martini';
      print(rS);
    } else if (rS == 312) {
      resultText = 'Your favorite cocktail is Mojito!';
      cocktail = 'Mojito';
    } else if (rS == 313) {
      resultText = 'Your favorite cocktail is Margarita!';
      cocktail = 'Margarita';
      print(rS);
    } else if (rS == 131) {
      resultText = 'Your favorite cocktail is Vodka Martini!';
      cocktail = 'Vodka Martini';
      print(rS);
    } else if (rS == 132) {
      resultText = 'Your favorite cocktail is Hurricane!';
      cocktail = 'Hurricane';
    } else if (rS == 133) {
      resultText = 'Your favorite cocktail is Negroni!';
      cocktail = 'Negroni';
      print(rS);
    } else if (rS == 231) {
      resultText = 'Your favorite cocktail is Bloody Mary!';
      cocktail = 'Bloody Mary';
      print(rS);
    } else if (rS == 232) {
      resultText = 'Your favorite cocktail is Cucumber Wasabi Martini!';
      cocktail = 'Cucumber Wasabi Martini';
    } else if (rS == 233) {
      resultText = 'Your favorite cocktail is Spicy Paloma Cocktail!';
      cocktail = 'Spicy Paloma Cocktail';
      print(rS);
    } else if (rS == 331) {
      resultText = 'Your favorite cocktail is April Rain Cocktail !';
      cocktail = 'April Rain Cocktail ';
      print(rS);
    } else if (rS == 332) {
      resultText = 'Your favorite cocktail is Mai Tai!';
      cocktail = 'Mai Tai';
    } else if (rS == 333) {
      resultText = 'Your favorite cocktail is Paloma!';
      cocktail = 'Paloma';
      print(rS);
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
            textColor: Color.fromARGB(255, 230, 57, 18),
            onPressed: resetHandler,
          ),
          ElevatedButton(
            child: Text('$cocktail'),
            onPressed: () {
              if (rS == 121) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Saltedcaramelespressomartini()));
              } else if (rS == 122) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Instantrumeggnog()));
              } else if (rS == 123) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Hazelnutespressomartini()));
              } else if (rS == 221) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SweetHeatCocktail()));
              } else if (rS == 222) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpicedHurricane()));
              } else if (rS == 223) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TequilaCocoaCaliente()));
              } else if (rS == 321) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QueensHotelsChow()));
              } else if (rS == 322) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Ladygreyrumfizz()));
              } else if (rS == 323) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Smokeandgingersours()));
              } else if (rS == 111) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cosmopolitan()));
              } else if (rS == 112) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PinaColantua()));
              } else if (rS == 113) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Flutter()));
              } else if (rS == 211) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MangoSpiceCocktail()));
              } else if (rS == 212) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Firecracker()));
              } else if (rS == 213) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const JalapenoMargarita()));
              } else if (rS == 311) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LemonDropMartini()));
              } else if (rS == 312) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Mojito()));
              } else if (rS == 313) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Margarita()));
              } else if (rS == 131) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VodkaMartini()));
              } else if (rS == 132) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Hurricane()));
              } else if (rS == 133) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Negroni()));
              } else if (rS == 231) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BloodyMary()));
              } else if (rS == 232) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CucumberWasabiMartini()));
              } else if (rS == 233) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpicyPaloma()));
              } else if (rS == 331) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AprilRainCocktail()));
              } else if (rS == 332) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MaiTai()));
              } else if (rS == 333) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Paloma()));
              }
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 230, 57, 18),
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
