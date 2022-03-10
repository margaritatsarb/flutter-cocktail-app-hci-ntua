import 'package:flutter/material.dart';

class VodkaMartini extends StatelessWidget {
  const VodkaMartini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Override the global settings
        title: Text(
          'Vodka Martini',
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(color: Color.fromARGB(255, 24, 110, 24)),
        ),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.info), onPressed: () {})],
      ),
      body: const Center(
        child: Text(
            '2 1/2 ounces vodka\n 1/2 ounce dry vermouth\n 1 dash orange bitters'),
      ),
    );
  }
}
