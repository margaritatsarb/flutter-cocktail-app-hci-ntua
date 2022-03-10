import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = <String>[
      'Mojito',
      'Vodka Martini'
    ]; //statelesswidget => δεν αλλαζει (final)
    return MaterialApp(
      title: 'Cocktailer',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          //shadowColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 230, 57, 18),
          ),
        ),
      ),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RandomWordsState();
  }
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <String>['Mojito', 'Vodka Martini'];
  final _saved = <String>{};
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktailer'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {}
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(String pair) {
    final alreadySaved = _saved.contains(pair);

    return ListTile(
      /* title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),*/
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
        semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
      ),
      onTap: () {
        setState(() {
          if (alreadySaved)
            _saved.remove(pair);
          else
            _saved.add(pair);
        });
      },
    );
  }
}
