// provider/movie_provider.dart
import 'package:flutter/material.dart';
import 'movie.dart';

// A list of movies
final names = <String>['Mojito', 'Vodka Martini'];

final List<Movie> initialData =
    List.generate(2, (index) => Movie(title: names[index]));

class MovieProvider with ChangeNotifier {
  // All movies (that will be displayed on the Home screen)
  final List<Movie> _movies = initialData;

  // Retrieve all movies
  List<Movie> get movies => _movies;

  // Favorite movies (that will be shown on the MyList screen)
  final List<Movie> _myList = [];

  // Retrieve favorite movies
  List<Movie> get myList => _myList;

  // Adding a movie to the favorites list
  void addToList(Movie movie) {
    _myList.add(movie);
    notifyListeners();
  }

  // Removing a movie from the favorites list
  void removeFromList(Movie movie) {
    _myList.remove(movie);
    notifyListeners();
  }
}
