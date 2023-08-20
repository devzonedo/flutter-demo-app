import 'package:flutter/material.dart';
import 'styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GredientContainer extends StatelessWidget {
//initialization work
  const GredientContainer({super.key});

// //named parameters
//   GredientContainer({key}): super(key:key );

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 103, 58, 183),
            Color.fromARGB(255, 40, 2, 105),
          ],
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
