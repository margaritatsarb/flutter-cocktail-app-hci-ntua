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
      body: _myList.isEmpty
          ? Center(
              child: Text(
                'Add Cocktails To\nYour Favorites!',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: _myList.length,
              itemBuilder: (context, index) {
                final currentCocktail1 = _myList[index];
                final currentCocktail = currentCocktail1.toString();
                /*return Card(
              key: ValueKey(currentCocktail.title),
              elevation: 4,
              child: ListTile(
                title: Text(currentCocktail.title),
                subtitle: Text(currentCocktail.runtime ?? ''),
                trailing: TextButton(
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    context
                        .read<CocktailProvider>()
                        .removeFromList(currentCocktail);
                  },),),);*/
                return Dismissible(
                    key: ValueKey(currentCocktail1.title),
                    onDismissed: (direction) {
                      setState(() {
                        _myList.removeAt(index);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('$currentCocktail dismissed')));
                    },
                    background: Container(color: Colors.red),
                    child: ListTile(
                      title: Text(currentCocktail1.title),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_forever_outlined),
                        tooltip: "Slide To Delete",
                        onPressed: () {},
                      ),
                    ));
              }),
    );
  }
}
