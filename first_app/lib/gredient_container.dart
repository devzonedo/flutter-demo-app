import 'package:flutter/material.dart';
import 'styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GredientContainer extends StatelessWidget {
//initialization work
  GredientContainer({super.key, required this.colors});

// //named parameters
//   GredientContainer({key}): super(key:key );

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText("this is text"),
      ),
    );
  }
}
