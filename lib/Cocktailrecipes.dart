import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage.dart';
import 'Recipes.dart';
import 'Favorites/mainf.dart';
import 'ShoppingList.dart';

class Cocktailrecipes extends StatefulWidget {
  const Cocktailrecipes({Key? key}) : super(key: key);
  @override
  _Cocktailrecipes createState() => _Cocktailrecipes();
}

class _Cocktailrecipes extends State<Cocktailrecipes> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Cocktail Recipes');
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onVerticalDragUpdate: (details) {},
        onHorizontalDragUpdate: (details) {
          if (details.delta.direction > 0) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage()));
          }
        },
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: customSearchBar,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  onPressed: () {
                    showSearch(
                        context: context, delegate: CustomSearchDelegate());
                  },
                  icon: const Icon(Icons.search),
                )
              ],
              centerTitle: true,
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
                      })
                ],
              ),
              shape: const CircularNotchedRectangle(),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              backgroundColor: const Color.fromARGB(255, 230, 57, 18),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
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
                  alignment: const Alignment(-1, 0.35),
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Vodka Martini'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VodkaMartini()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Pina Colantua'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PinaColantua()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Mojito'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Mojito()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Flutter'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Flutter()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Cosmopolitan'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cosmopolitan()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Margarita'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Margarita()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Mai Tai'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MaiTai()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Bloody Mary'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BloodyMary()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Negroni'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Negroni()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Queens Hotels Chow'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const QueensHotelsChow()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Smoke and ginger sours'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Smokeandgingersours()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Hazelnut espresso martini'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Hazelnutespressomartini()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Hurricane'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hurricane()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Instant rum eggnog'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Instantrumeggnog()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Salted Caramel Espresso Martini'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Saltedcaramelespressomartini()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('April Rain Cocktail'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AprilRainCocktail()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Paloma'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Paloma()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Lady grey rum fizz'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Ladygreyrumfizz()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Lemon Drop Martini'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LemonDropMartini()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Jalapeno Margarita'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const JalapenoMargarita()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Cucumber Wasabi Martini'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CucumberWasabiMartini()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Mango Spice Cocktail'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MangoSpiceCocktail()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Sweet Heat Cocktail'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SweetHeatCocktail()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Tequila Cocoa Caliente'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TequilaCocoaCaliente()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Firecracker'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Firecracker()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Spiced Hurricane'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SpicedHurricane()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.local_drink),
                        title: const Text('Spicy Paloma'),
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
            ))));
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Vodka Martini",
    "Pina Colantua",
    "Mojito",
    "Flutter",
    "Cosmopolitan",
    "Margarita",
    "Mai Tai",
    "Bloody Mary",
    "Negroni",
    "Queens Hotels Chow",
    "Smoke and ginger sours",
    "Hazelnut espresso martini",
    "Hurricane",
    "Instant rum eggnog",
    "Salted Caramel Espresso Martini",
    "April Rain Cocktail",
    "Paloma",
    "Lady grey rum fizz",
    "Lemon Drop Martini",
    "Jalapeno Margarita",
    "Cucumber Wasabi Martini",
    "Mango Spice Cocktail",
    "Sweet Heat Cocktail",
    "Tequila Cocoa Caliente",
    "Firecracker",
    "Spiced Hurricane",
    "Spicy Paloma"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            if (result == 'Vodka Martini') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VodkaMartini()));
            } else if (result == 'Pina Colantua') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PinaColantua()));
            } else if (result == 'Mojito') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Mojito()));
            } else if (result == 'Flutter') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Flutter()));
            } else if (result == 'Cosmopolitan') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Cosmopolitan()));
            } else if (result == 'Margarita') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Margarita()));
            } else if (result == 'Mai Tai') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MaiTai()));
            } else if (result == 'Bloody Mary') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BloodyMary()));
            } else if (result == 'Negroni') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Negroni()));
            } else if (result == 'Queens Hotels Chow') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const QueensHotelsChow()));
            } else if (result == 'Smoke and ginger sours') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Smokeandgingersours()));
            } else if (result == 'Hazelnut espresso martini') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Hazelnutespressomartini()));
            } else if (result == 'Hurricane') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Hurricane()));
            } else if (result == 'Instant rum eggnog') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Instantrumeggnog()));
            } else if (result == 'Salted Caramel Espresso Martini') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Saltedcaramelespressomartini()));
            } else if (result == 'April Rain Cocktail') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AprilRainCocktail()));
            } else if (result == 'Paloma') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Paloma()));
            } else if (result == 'Lady grey rum fizz') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Ladygreyrumfizz()));
            } else if (result == 'Lemon Drop Martini') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LemonDropMartini()));
            } else if (result == 'Jalapeno Margarita') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const JalapenoMargarita()));
            } else if (result == 'Cucumber Wasabi Martini') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CucumberWasabiMartini()));
            } else if (result == 'Mango Spice Cocktail') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MangoSpiceCocktail()));
            } else if (result == 'Sweet Heat Cocktail') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SweetHeatCocktail()));
            } else if (result == 'Tequila Cocoa Caliente') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TequilaCocoaCaliente()));
            } else if (result == 'Firecracker') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Firecracker()));
            } else if (result == 'Spiced Hurricane') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SpicedHurricane()));
            } else if (result == 'Spicy Paloma') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SpicyPaloma()));
            }
          },
        );
      },
    );
  }
}
