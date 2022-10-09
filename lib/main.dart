import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:provider/provider.dart';
import 'Favorites/cocktail_provider.dart';
import 'Favorites/home_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'fire_base/bloc/auth_bloc.dart';
import 'fire_base/data/repositories/auth_repository.dart';
import 'fire_base/presentation/home_screen.dart';
import 'fire_base/presentation/login_screen.dart';
import 'fire_base/presentation/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'fire_base/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('shopping_box');
  /*await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  runApp(ChangeNotifierProvider<CocktailProvider>(
    child: const MyApp(),
    create: (_) => CocktailProvider(),
  ));
}

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepository: RepositoryProvider.of<AuthRepository>(context),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cocktailer',
          theme: ThemeData(
              fontFamily: 'RockSalt',
              primarySwatch: Colors.deepOrange,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                iconTheme:
                    IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
                actionsIconTheme:
                    IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
                centerTitle: true,
                elevation: 15,
                titleTextStyle: TextStyle(
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'RockSalt',
                  color: Color.fromARGB(255, 230, 57, 18),
                ),
              )),
          /**  here user is imported
           *  from Firebase auth package  **/
          home: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return HomePage();
                }

                return LoginScreen();
              }),
        ),
      ),
    );
  }
}*/

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
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontFamily: 'RockSalt',
              color: Color.fromARGB(255, 230, 57, 18),
            ),
          )),
      home: HomePage(),
    );
  }
}
