import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 4, 103, 73), Color.fromARGB(255, 221, 24, 10)),
      ),
    ),
  );
}
