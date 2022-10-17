import 'package:flutter/material.dart';
import 'Cocktailrecipes.dart';
import 'Favorites/mainf.dart';
import 'ShoppingList.dart';
import 'Quiz/mainq.dart';
import 'fire_base/presentation/login_screen.dart';
import 'Camera/camera.dart';
import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: Text(
            'Cocktailer',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          actions: [
            PopupMenuButton(
                icon: const Icon(Icons.list),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text(
                        "Cocktail Recipes",
                      ),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text("Favorites"),
                    ),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Text("Login/Logout"),
                    ),
                    const PopupMenuItem<int>(
                      value: 3,
                      child: Text("My Cocktails"),
                    ),
                    const PopupMenuItem<int>(
                      value: 4,
                      child: Text("Quiz"),
                    ),
                    const PopupMenuItem<int>(
                      value: 5,
                      child: Text("Shopping List"),
                    ),
                  ];
                },
                onSelected: (value) async {
                  if (value == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cocktailrecipes()));
                  } else if (value == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favorites()));
                  } else if (value == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  } else if (value == 3) {
                    final cameras = await availableCameras();
                    late final firstCamera = cameras.first;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ProviderScope(child: Camera(camera: firstCamera)),
                      ),
                    );
                  } else if (value == 4) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Quizz()));
                  } else if (value == 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShoppingList()));
                  }
                }),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 221, 19, 4),
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Favorites()));
                },
              ),
              const Spacer(),
              IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(133, 148, 55, 12),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShoppingList()));
                  }),
              const Spacer(),
              IconButton(
                  icon: const Icon(
                    Icons.login_outlined,
                    color: Color.fromARGB(133, 148, 55, 12),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }),
            ],
          ),
        ),
        body: Center(
            child: Stack(
          children: <Widget>[
            const Image(
              image: AssetImage('assets/images/bulb.jpg'),
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: const Alignment(0, -0.5),
              child: ElevatedButton(
                child: const Text(
                  'Quiz',
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Quizz()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 230, 57, 18),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.1),
              child: ElevatedButton(
                child: const Text(
                  'Cocktail\n recipes',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Cocktailrecipes()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 230, 57, 18),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.6),
              child: ElevatedButton(
                child: const Text(
                  'My Cocktails',
                ),
                onPressed: () async {
                  final cameras = await availableCameras();
                  late final firstCamera = cameras.first;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ProviderScope(child: Camera(camera: firstCamera)),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 230, 57, 18),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        )));
  }
}
