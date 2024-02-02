import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(myColors: [
          Color.fromARGB(255, 106, 27, 242),
          Color.fromARGB(255, 44, 4, 112),
          Color.fromARGB(255, 13, 1, 32),
        ]),
      ),
    ),
  );
}
