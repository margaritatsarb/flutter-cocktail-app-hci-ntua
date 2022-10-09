import 'package:flutter/material.dart';
import 'Cocktailrecipes.dart';
import 'Favorites/home_screen.dart';
import 'ShoppingList.dart';
import 'Quiz/mainq.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            'Cocktailer',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          actions: [
            PopupMenuButton(
                icon: Icon(Icons.list),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text(
                        "Quiz",
                        style: TextStyle(fontFamily: 'RockSalt'),
                      ),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Cocktail Recipes"),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Shopping List"),
                    ),
                    PopupMenuItem<int>(
                      value: 3,
                      child: Text("Favorites"),
                    ),
                  ];
                },
                onSelected: (value) {
                  if (value == 0) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Quizz()));
                  } else if (value == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cocktailrecipes()));
                  } else if (value == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShoppingList()));
                  } else if (value == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favorites()));
                  }
                }),
          ],
        ),
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
              Spacer(),
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
        ),
        body: Center(
            child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/bulb.jpg'),
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment(0, -0.5),
              child: ElevatedButton(
                child: const Text(
                  'Quiz',
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Quizz()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 230, 57, 18),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
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
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 230, 57, 18),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        )));
  }
}
