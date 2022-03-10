import 'package:flutter/material.dart';
import 'Quiz/Mojito.dart';
import 'Quiz/VodkaMartini.dart';
import 'Quiz/PinaColantua.dart';

class Cocktailrecipes extends StatelessWidget {
  const Cocktailrecipes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cocktail Recipes',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
        body: Center(
            child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(onPressed: () {}),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(onPressed: () {}),
            ),
            Align(
              alignment: Alignment(0, -0.2),
              child: ElevatedButton(
                  child: const Text(
                    'Mojito',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Mojito()));
                  }),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: ElevatedButton(
                  child: const Text(
                    'Vodka Martini',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VodkaMartini()));
                  }),
            ),
            Align(
              alignment: Alignment(0, 0.2),
              child: ElevatedButton(
                  child: const Text(
                    'Pina Colantua',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PinaColantua()));
                  }),
            ),
          ],
        )));
  }
}
