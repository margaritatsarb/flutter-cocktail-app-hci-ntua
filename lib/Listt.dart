import 'package:flutter/material.dart';
import 'Cocktailrecipes.dart';
import 'Quiz/mainq.dart';
import 'HomePage.dart';

class Listt extends StatelessWidget {
  const Listt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cocktailer',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
          ],
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
              alignment: Alignment(0, -0.1),
              child: ElevatedButton(
                  child: const Text(
                    'Quiz',
                  ),
                  onPressed: () {}),
            ),
            Align(
              alignment: Alignment(0, 0.1),
              child: ElevatedButton(
                  child: const Text(
                    'Cocktail recipes',
                  ),
                  onPressed: () {}),
            ),
            Align(
              alignment: Alignment(0.9, -1),
              child: ElevatedButton(
                  child: const Text(
                    'Quiz',
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Quizz()));
                  }),
            ),
            Align(
              alignment: Alignment(0.9, -0.85),
              child: ElevatedButton(
                  child: const Text(
                    'Cocktail Recipes',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cocktailrecipes()));
                  }),
            ),
            Align(
              alignment: Alignment(0.9, -0.7),
              child: ElevatedButton(
                  child: const Text(
                    'Shopping list',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cocktailrecipes()));
                  }),
            ),
            Align(
              alignment: Alignment(0.9, -0.55),
              child: ElevatedButton(
                  child: const Text(
                    'Favorites',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cocktailrecipes()));
                  }),
            ),
          ],
        )));
  }
}
