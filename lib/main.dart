import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:provider/provider.dart';
import 'Favorites/cocktail_provider.dart';
import 'Favorites/home_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('shopping_box');
  runApp(ChangeNotifierProvider<CocktailProvider>(
    child: const MyApp(),
    create: (_) => CocktailProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cocktailer',
      theme: ThemeData(
          fontFamily: 'RockSalt',
          primarySwatch: Colors.deepOrange,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
            actionsIconTheme:
                IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
            centerTitle: true,
            elevation: 15,
            titleTextStyle: TextStyle(
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              fontFamily: 'RockSalt',
              color: Color.fromARGB(255, 230, 57, 18),
            ),
          )),
      home: HomePage(),
    );
  }
}
