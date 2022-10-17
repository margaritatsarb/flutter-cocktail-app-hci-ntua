import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../HomePage.dart';

import 'cocktail_provider.dart';
import 'my_list_screen.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    var cocktails = context.watch<CocktailProvider>().cocktails;
    var myList = context.watch<CocktailProvider>().myList;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text('Cocktailer'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        backgroundColor: const Color.fromARGB(255, 230, 57, 18),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyListScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.favorite),
              label: Text(
                "Favorites (${myList.length})",
                style: const TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 20)),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: cocktails.length,
                  itemBuilder: (_, index) {
                    final currentcocktail = cocktails[index];
                    return Card(
                      key: ValueKey(currentcocktail.title),
                      color: const Color.fromARGB(255, 255, 220, 213),
                      elevation: 4,
                      child: ListTile(
                        title: Text(
                          currentcocktail.title,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 230, 57, 18)),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: myList.contains(currentcocktail)
                                ? Colors.red
                                : Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            if (!myList.contains(currentcocktail)) {
                              context
                                  .read<CocktailProvider>()
                                  .addToList(currentcocktail);
                            } else {
                              context
                                  .read<CocktailProvider>()
                                  .removeFromList(currentcocktail);
                            }
                          },
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
