// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'movie_provider.dart';
import 'home_screen.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Favorites',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            // This will be applied to the "back" icon
            iconTheme: IconThemeData(color: Colors.blue),
            // This will be applied to the action icon buttons that locates on the right side
            actionsIconTheme:
                IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
            centerTitle: true,
            elevation: 15,
            titleTextStyle: TextStyle(
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 230, 57, 18),
            ),
          )),
      home: const HomeScreen(),
    );
  }
}
