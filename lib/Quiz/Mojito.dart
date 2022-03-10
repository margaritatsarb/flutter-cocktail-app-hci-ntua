import 'package:flutter/material.dart';

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
              ?.copyWith(color: Color.fromARGB(255, 24, 110, 24)),
        ),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.info), onPressed: () {})],
      ),
      body: const Center(
        child: Text(
            '2 ounces white rum\n 1 ounch fresh juice\n 5 mint leaves, more for garnice'),
      ),
    );
  }
}
