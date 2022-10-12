import 'package:flutter/material.dart';
import 'cocktail.dart';

final names = <String>[
  'Flutter',
  'Mojito',
  'Vodka Martini',
  'Pina Colantua',
  'Cosmopolitan',
  'Margarita',
  'Mai Tai',
  'Negroni',
  'Queens Hotels Chow',
  'Smoke and Ginger Sours',
  'BloodyMary',
  'Hazelnut Espresso Martini',
  'Hurricane',
  'Instant Rum Eggnog',
  'Salted Caramel Espresso Martini',
  'April Rain',
  'Paloma',
  'Lady Grey Rum Fizz',
  'Lemon Drop Martini',
  'Jalapeno Margarita',
  'Cucumber Wasabi Martini',
  'Mango Spice',
  'Sweet Heat',
  'Tequila Cocoa Caliente',
  'Firecracker',
  'Spiced Hurricane',
  'Spicy Paloma',
];

final List<Cocktail> initialData =
    List.generate(27, (index) => Cocktail(title: names[index]));

class CocktailProvider with ChangeNotifier {
  final List<Cocktail> _cocktails = initialData;
  List<Cocktail> get cocktails => _cocktails;
  final List<Cocktail> _myList = [];
  List<Cocktail> get myList => _myList;
  void addToList(Cocktail cocktail) {
    _myList.add(cocktail);
    notifyListeners();
  }

  void removeFromList(Cocktail cocktail) {
    _myList.remove(cocktail);
    notifyListeners();
  }
}
