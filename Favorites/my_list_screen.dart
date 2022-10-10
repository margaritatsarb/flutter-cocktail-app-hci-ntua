// screens/my_list_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../HomePage.dart';
import 'cocktail_provider.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({Key? key}) : super(key: key);

  @override
  _MyListScreenState createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    final _myList = context.watch<CocktailProvider>().myList;
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites (${_myList.length})"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        backgroundColor: Color.fromARGB(255, 230, 57, 18),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView.builder(
          itemCount: _myList.length,
          itemBuilder: (_, index) {
            final currentMovie = _myList[index];
            return Card(
              key: ValueKey(currentMovie.title),
              elevation: 4,
              child: ListTile(
                title: Text(currentMovie.title),
                subtitle: Text(currentMovie.runtime ?? ''),
                trailing: TextButton(
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    context
                        .read<CocktailProvider>()
                        .removeFromList(currentMovie);
                  },
                ),
              ),
            );
          }),
    );
  }
}