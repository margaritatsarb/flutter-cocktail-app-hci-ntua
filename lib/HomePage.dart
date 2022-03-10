import 'package:flutter/material.dart';
import 'Listt.dart';
import 'Cocktailrecipes.dart';
import 'Favorites/mainf.dart';
import 'ShoppingList.dart';
import 'Quiz/mainq.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Listt()));
              },
            ),
          ],
        ),
        body: Center(
            child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favorites()));
                  }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShoppingList()));
                  }),
            ),
            Align(
              alignment: Alignment(0, -0.1),
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
              alignment: Alignment(0, 0.1),
              child: ElevatedButton(
                  child: const Text(
                    'Cocktail\n recipes',
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
