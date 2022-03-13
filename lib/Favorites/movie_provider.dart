import 'package:flutter/material.dart';
import 'movie.dart';

final names = <String>[
  'Mojito',
  'Vodka Martini',
  'Pina Colantua',
  'Flutter',
  'Cosmopolitan',
  'Margarita',
  'MaiTai',
  'Negroni',
  'BloodyMary'
];

final List<Movie> initialData =
    List.generate(9, (index) => Movie(title: names[index]));

class MovieProvider with ChangeNotifier {
  final List<Movie> _movies = initialData;
  List<Movie> get movies => _movies;
  final List<Movie> _myList = [];
  List<Movie> get myList => _myList;
  void addToList(Movie movie) {
    _myList.add(movie);
    notifyListeners();
  }

  void removeFromList(Movie movie) {
    _myList.remove(movie);
    notifyListeners();
  }
}
