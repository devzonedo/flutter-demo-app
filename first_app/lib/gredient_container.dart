import 'package:flutter/material.dart';
import 'styled_text.dart';

class GredientContainer extends StatelessWidget {
//initialization work
  const GredientContainer({super.key});

// //named parameters
//   GredientContainer({key}): super(key:key );

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 103, 58, 183),
            Color.fromARGB(255, 40, 2, 105),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
