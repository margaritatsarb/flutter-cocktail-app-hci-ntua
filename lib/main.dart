import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:provider/provider.dart';
import 'Favorites/cocktail_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'fire_base/bloc/auth_bloc.dart';
import 'fire_base/data/repositories/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'fire_base/firebase_options.dart';
import 'fire_base/presentation/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('shopping_box');
  /*if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } else {
    Firebase.app(); // if already initialized, use that one
  }*/
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider<CocktailProvider>(
    child: const MyApp(),
    create: (_) => CocktailProvider(),
  ));
}

class MyApp extends StatelessWidget {
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
          home: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return HomePage();
                }

                return LoginScreen();
                //return const HomePage();
              }),
        ),
      ),
    );
  }
}
