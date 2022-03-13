import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage.dart';
import 'Recipes.dart';
import 'Favorites/home_screen.dart';
import 'ShoppingList.dart';

class Cocktailrecipes extends StatelessWidget {
  const Cocktailrecipes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cocktail Recipes',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
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
                  }),
              Spacer(),
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
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          backgroundColor: Color.fromARGB(255, 230, 57, 18),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Center(
            child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/bulb.jpg'),
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment(-1, 0.35),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Vodka Martini'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VodkaMartini()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Pina Colantua'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PinaColantua()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Mojito'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mojito()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Flutter'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Flutter()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Cosmopolitan'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cosmopolitan()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Margarita'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Margarita()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Mai Tai'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MaiTai()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Bloody Mary'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BloodyMary()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Negroni'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Negroni()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Queens Hotels Chow'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QueensHotelsChow()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Smoke and ginger sours'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Smokeandgingersours()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Hazelnut espresso martini'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Hazelnutespressomartini()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Hurricane'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hurricane()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Instant rum eggnog'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Instantrumeggnog()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Salted Caramel Espresso Martini'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Saltedcaramelespressomartini()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('April Rain Cocktail'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AprilRainCocktail()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Paloma'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Paloma()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Lady grey rum fizz'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Ladygreyrumfizz()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Lemon Drop Martini'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LemonDropMartini()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Jalapeno Margarita'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JalapenoMargarita()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Cucumbe rWasabi Martini'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CucumberWasabiMartini()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Mango Spice Cocktail'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MangoSpiceCocktail()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Sweet Heat Cocktail'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SweetHeatCocktail()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Tequila Cocoa Caliente'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TequilaCocoaCaliente()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Firecracker'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Firecracker()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Spiced Hurricane'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpicedHurricane()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_drink),
                    title: Text('Spicy Paloma'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpicyPaloma()));
                    },
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
