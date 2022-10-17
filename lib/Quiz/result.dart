import 'package:flutter/material.dart';
import '../Recipes.dart';

class Result extends StatelessWidget {
  final int rS;
  final VoidCallback resetHandler;
  String cocktail = '';

  Result(this.rS, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText = 'Your favorite cocktail is';
    if (rS == 121) {
      cocktail = 'Salted caramel espresso martini';
    } else if (rS == 122) {
      cocktail = 'Instant rum eggnog';
    } else if (rS == 123) {
      cocktail = 'Hazelnut espresso martini';
    } else if (rS == 221) {
      cocktail = 'Sweet Heat';
    } else if (rS == 222) {
      cocktail = 'Spiced Hurricane';
    } else if (rS == 223) {
      cocktail = 'Tequila Cocoa Caliente';
    } else if (rS == 321) {
      cocktail = 'Queens Hotels Chow';
    } else if (rS == 322) {
      cocktail = 'Lady grey rum fizz';
    } else if (rS == 323) {
      cocktail = 'Smoke and ginger sours';
    } else if (rS == 111) {
      cocktail = 'Cosmopolitan';
    } else if (rS == 112) {
      cocktail = 'Pina Colantua';
    } else if (rS == 113) {
      cocktail = 'Flutter';
    } else if (rS == 211) {
      cocktail = 'Mango Spice';
    } else if (rS == 212) {
      cocktail = 'Firecracker';
    } else if (rS == 213) {
      cocktail = 'Jalapeno Margarita';
    } else if (rS == 311) {
      cocktail = 'Lemon Drop Martini';
    } else if (rS == 312) {
      cocktail = 'Mojito';
    } else if (rS == 313) {
      cocktail = 'Margarita';
    } else if (rS == 131) {
      cocktail = 'Vodka Martini';
    } else if (rS == 132) {
      cocktail = 'Hurricane';
    } else if (rS == 133) {
      cocktail = 'Negroni';
    } else if (rS == 231) {
      cocktail = 'Bloody Mary';
    } else if (rS == 232) {
      cocktail = 'Cucumber Wasabi Martini';
    } else if (rS == 233) {
      cocktail = 'Spicy Paloma Cocktail';
    } else if (rS == 331) {
      cocktail = 'April Rain Cocktail';
    } else if (rS == 332) {
      cocktail = 'Mai Tai';
    } else if (rS == 333) {
      cocktail = 'Paloma';
    } else {
      resultText = 'Drink a beer';
      cocktail = '';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: const Alignment(0, -0.4),
            child: Text(
              resultPhrase,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.1),
            child: ElevatedButton(
              child: Text(cocktail),
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
                          builder: (context) =>
                              const Hazelnutespressomartini()));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Margarita()));
                } else if (rS == 131) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VodkaMartini()));
                } else if (rS == 132) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Hurricane()));
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
                  backgroundColor: const Color.fromARGB(255, 230, 57, 18),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Align(
              alignment: const Alignment(0, 0.5),
              child: TextButton(
                child: const Text(
                  'Restart Quiz!',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: resetHandler,
              ))
        ],
      ),
    );
  }
}
