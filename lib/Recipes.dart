import 'package:flutter/material.dart';
import 'Favorites/home_screen.dart';
import 'ShoppingList.dart';
import 'Homepage.dart';

class Flutter extends StatelessWidget {
  const Flutter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Flutter',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/flutter.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 50 ml Reposado tequila\n \u2022 25 ml Λικέρ καφέ\n \u2022 35 ml Χυμός από ανανά\n \u2022 4 drop Daquiri bitters (Προαιρετικά)',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )));
  }
}

class Mojito extends StatelessWidget {
  const Mojito({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Mojito',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          backgroundColor: Color.fromARGB(255, 230, 57, 18),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/mojito.png'),
            Align(
              //alignment: Alignment(0, -0.2),
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 2 ounces white rum\n \u2022 1 ounch fresh juice\n \u2022 5 mint leaves, more for garnice',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )));
  }
}

class VodkaMartini extends StatelessWidget {
  const VodkaMartini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Vodka Martini',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/vodkamartini.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 2 1/2 ounces vodka\n \u2022 1/2 ounce dry vermouth\n \u2022 1 dash orange bitters',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )));
  }
}

class PinaColantua extends StatelessWidget {
  const PinaColantua({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Pina Colantua',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/pinacolantua.png'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 6 ounces white rum \n \u2022 6 ounces cream of coconut\n  \u2022 6 ounces pineapple juice\n \u2022 1/2 cup frozen pineapple chunks \n \u2022 4 cups ice\n \u2022 4 ounces golden or añejo rum\n \u2022 Pineapple leaves or wedges',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )));
  }
}

class Cosmopolitan extends StatelessWidget {
  const Cosmopolitan({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Cosmopolitan',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/cosmopolitan.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                  '\n \u2022 45ml Vodka\n \u2022 15ml Triple sec liqueur\n \u2022 30ml Cranberry juice\n \u2022 10ml Lime juice',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
          ],
        )));
  }
}

class Margarita extends StatelessWidget {
  const Margarita({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Margarita',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/margarita.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 45ml Blanco tequila\n \u2022 25ml Triple sec liqueur\n \u2022 25ml Lime juice\n \u2022 5ml Agave syrup',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )));
  }
}

class MaiTai extends StatelessWidget {
  const MaiTai({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Mai Tai',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/maitai.png'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 45ml White Rum\n \u2022 25ml Cointreau Liqueur\n \u2022 25ml Lime Juice\n \u2022 50ml Pineapple Juice ',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Negroni extends StatelessWidget {
  const Negroni({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Negroni',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/negroni.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 30ml Tequila\n \u2022 30ml Italian red bitter liqueur\n \u2022 30ml Sweet Vermouth',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class QueensHotelsChow extends StatelessWidget {
  const QueensHotelsChow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Bloody Mary',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/QueensHotelsChow.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 45ml Vodka\n \u2022 15ml Massenez Pomme Verte \n \u2022 20ml lemon juice \n \u2022 15ml spiced rhubarb syrup\n \u2022 6 mint leaves \n \u2022 15ml aquafaba',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Smokeandgingersours extends StatelessWidget {
  const Smokeandgingersours({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Bloody Mary',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Smokeandgingersours.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 5mm piece ginger\n \u2022 50ml Tequila\n \u2022 25ml lemon juice, plus lemon slice to garnish\n \u2022 15ml agave syrup\n \u2022 2 dashes Angostura Bitters ',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class BloodyMary extends StatelessWidget {
  const BloodyMary({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Bloody Mary',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/bloodymary.png'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 60ml Vodka\n \u2022 120ml Tomato Juice\n \u2022 15ml Lemon Juice\n \u2022 5 drops Tabasco\n \u2022 3 drops Worcestershire sauce\n \u2022 Pepper',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Hazelnutespressomartini extends StatelessWidget {
  const Hazelnutespressomartini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Hazelnut espresso martini',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Hazelnutespressomartini.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 2 tbs tequila\n \u2022 1 1/2 tbs espresso \n \u2022 1 tbs hazelnut liqueur\n \u2022 Pinch finely grated orange zest\n \u2022 Crushed ice\n \u2022 Finely chopped roasted hazelnuts & coffee beans, to serve',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Hurricane extends StatelessWidget {
  const Hurricane({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Hurricane',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Hurricane.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 Dark rum\n \u2022 Light rum\n \u2022 Orange juice\n \u2022 Lime juice\n \u2022 Passion fruit syrup\n \u2022 Grenadine ',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Instantrumeggnog extends StatelessWidget {
  const Instantrumeggnog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Instant rum eggnog',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Instantrumeggnog.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 1l vanilla ice cream, melted\n \u2022 3/4 cup rum\n \u2022 1 tsp vanilla bean extract\n \u2022 1 tsp each ginger and cinnamon, plus extra to serve\n \u2022 ½ tsp freshly grated nutmeg, plus extra to serve',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Saltedcaramelespressomartini extends StatelessWidget {
  const Saltedcaramelespressomartini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Salted caramel espresso martini',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Saltedcaramelespressomartini.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 1 tbs store-bought caramel\n \u2022 50ml espresso, cooled\n \u2022 50ml coffee liqueur (we used Kahlua)\n \u2022 100ml vodka',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class AprilRainCocktail extends StatelessWidget {
  const AprilRainCocktail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'April Rain Cocktail',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/AprilRainCocktail.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 2 ounces vodka\n \u2022 1/2 ounce dry vermouth\n \u2022 1/2 ounce freshly squeezed lime juice\n \u2022 Lime peel, for garnish ',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Paloma extends StatelessWidget {
  const Paloma({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Paloma',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Paloma.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 Tequila\n \u2022 Grapefruit juice\n \u2022 Lime juice\n \u2022 Maple syrup or simple syrup \n \u2022 Soda water',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Ladygreyrumfizz extends StatelessWidget {
  const Ladygreyrumfizz({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Lady grey rum fizz',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Ladygreyrumfizz.png'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 2/3 cup (165ml) rum\n \u2022 2/3 cup (165ml) lemon juice\n \u2022 4 eggwhites (optional)\n \u2022 Ice cubes\n \u2022 3 cups (750ml) chilled prosecco\n \u2022 Edible flowers (optional), to serve\n LADY GREY SYRUP\n \u2022 1/2 cup (110g) caster sugar\n \u2022 1 Lady Grey tea bag\n \u2022 4 juniper berries, bruised\n \u2022 2 strips pared lemon rind, thinly sliced',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class LemonDropMartini extends StatelessWidget {
  const LemonDropMartini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Lemon Drop Martini',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/LemonDropMartini.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 Citron vodka or standard vodka\n \u2022 Cointreau or triple sec\n \u2022 Lemon juice\n \u2022 Simple syrup or maple syrup',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class JalapenoMargarita extends StatelessWidget {
  const JalapenoMargarita({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Jalapeno Margarita',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/JalapenoMargarita.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 1 jalapeño pepper, seeds removed and sliced\n \u2022 1 1/2 ounces reposado tequila\n \u2022 1/2 ounce brandy-based orange liqueur\n \u2022 1 ounce freshly squeezed lime juice\n \u2022 1/2 teaspoon agave nectar\n \u2022 1 dash orange bitters\n \u2022 Jalapeño slice, for garnish',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class CucumberWasabiMartini extends StatelessWidget {
  const CucumberWasabiMartini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Cucumber Wasabi Martini',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/CucumberWasabiMartini.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 4 slices cucumber, divided\n \u2022 1 pea-sized dollop wasabi paste\n \u2022 1/2 ounce simple syrup\n \u2022 1 1/2 ounces gin (rum)\n \u2022 1/2 ounce lemon juice',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class MangoSpiceCocktail extends StatelessWidget {
  const MangoSpiceCocktail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Mango Spice Cocktail',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/MangoSpiceCocktail.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 1 ounce mango nectar\n \u2022 3 slices jalapeño pepper, divided\n \u2022 1/2 ounce agave nectar\n \u2022 1 1/2 ounces mango vodka\n \u2022 3/4 ounce freshly squeezed lime juice\n \u2022 1 dash orange bitters',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class SweetHeatCocktail extends StatelessWidget {
  const SweetHeatCocktail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Sweet Heat Cocktail',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/SweetHeatCocktail.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 1 slice habanero pepper, no seeds\n \u2022 1 1/2 ounces ginger vodka\n \u2022 3/4 ounce agave nectar\n \u2022 3/4 ounce freshly squeezed lime juice\n \u2022 Candied ginger, for garnish',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class TequilaCocoaCaliente extends StatelessWidget {
  const TequilaCocoaCaliente({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Tequila Cocoa Caliente',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/TequilaCocoaCaliente.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n For the Cinnamon-Serrano-Infused Tequila:\n \u2022 1 (750-milliliter) bottle aged tequila\n \u2022 2 cinnamon sticks\n \u2022 1 whole serrano pepper\n For the Cocktail:\n \u20221 cup milk\n \u2022 2/3 tablet Mexican table chocolate, about 1 ounce\n \u2022 1 1/2 ounces cinnamon-serrano reposado tequila\n \u2022 Cinnamon stick, for garnish\n \u2022 Chili pepper, for garnish',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class Firecracker extends StatelessWidget {
  const Firecracker({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Firecracker',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/Firecracker.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 2 1-inch-cubed watermelon chunks\n \u2022 1 1/2 ounces aged rum\n \u2022 1/2 ounce triple sec\n \u2022 1/2 ounce lime juice, freshly squeezed\n \u2022 1/2 ounce simple syrup\n \u2022 1/6 teaspoon cayenne pepper\n \u2022 Garnish: lime wedge',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class SpicedHurricane extends StatelessWidget {
  const SpicedHurricane({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Spiced Hurricane',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/SpicedHurricane.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022.75 oz spiced rum.\n \u2022.75 oz white rum.\n \u2022 1 oz orange juice.\n \u2022 1 oz lime juice.\n \u2022.25 oz grenadine.\n \u2022 ice.\n \u2022 orange slice and cherry for garnish',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}

class SpicyPaloma extends StatelessWidget {
  const SpicyPaloma({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Override the global settings
          title: Text(
            'Spicy Paloma',
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: Colors.deepOrange),
          ),
          centerTitle: true,
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
        body: Center(
            child: Stack(
          children: <Widget>[
            Image.asset('assets/images/SpicyPaloma.jpg'),
            Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '\n \u2022 1 oz tequila.\n \u2022 3 oz fresh grapefruit juice strained.\n \u2022 1 oz jalapeño simple syrup.\n \u2022 1 lime Youll only need a squeeze!\n \u2022 Splash of grapefruit soda water We used La Croix, but you can also use regular soda water.\n \u2022 1 jalapeño slice and sugar and sea salt mixture for garnishing. ',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        )));
  }
}
