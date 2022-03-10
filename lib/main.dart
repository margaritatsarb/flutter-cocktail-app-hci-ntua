import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:provider/provider.dart';
import 'Favorites/movie_provider.dart';
import 'Favorites/home_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('shopping_box');
  runApp(ChangeNotifierProvider<MovieProvider>(
    child: const MyApp(),
    create: (_) => MovieProvider(), // Create a new ChangeNotifier object
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Cocktailer',
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
      home: const HomePage(),
    );
  }
}
