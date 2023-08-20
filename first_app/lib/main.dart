import 'package:flutter/material.dart';
import 'gredient_container.dart';

void main() {
  const List<Color> colorList = [
    Color.fromARGB(255, 183, 154, 58),
    Color.fromARGB(255, 83, 183, 58),
  ];

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GredientContainer(colors: colorList),
      ),
    ),
  );
}
