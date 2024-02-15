import 'package:flutter/material.dart';

import 'package:first_application/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const GradientContainer(
          [Color.fromARGB(255, 6, 133, 218), Color.fromARGB(255, 70, 6, 218)],
        ),
      ),
    ),
  );
}
