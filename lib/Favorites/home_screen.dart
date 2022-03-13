import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../HomePage.dart';

import 'movie_provider.dart';
import 'my_list_screen.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    var myList = context.watch<MovieProvider>().myList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktailer'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        backgroundColor: Color.fromARGB(255, 230, 57, 18),
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
                  primary: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 20)),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (_, index) {
                    final currentMovie = movies[index];
                    return Card(
                      key: ValueKey(currentMovie.title),
                      color: Color.fromARGB(19, 255, 47, 0),
                      elevation: 4,
                      child: ListTile(
                        title: Text(currentMovie.title),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: myList.contains(currentMovie)
                                ? Colors.red
                                : Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            if (!myList.contains(currentMovie)) {
                              context
                                  .read<MovieProvider>()
                                  .addToList(currentMovie);
                            } else {
                              context
                                  .read<MovieProvider>()
                                  .removeFromList(currentMovie);
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
