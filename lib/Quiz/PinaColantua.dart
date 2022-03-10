import 'package:flutter/material.dart';

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
              ?.copyWith(color: Color.fromARGB(255, 24, 110, 24)),
        ),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.info), onPressed: () {})],
      ),
      body: const Center(
        child: Text(
            '6 ounces white rum \n 6 ounces cream of coconut\n  6 ounces pineapple juice\n 1/2 cup frozen pineapple chunks \n 4 cups ice\n 4 ounces golden or añejo rum\n Pineapple leaves or wedges'),
      ),
    );
  }
}
