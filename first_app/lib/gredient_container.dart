import 'package:flutter/material.dart';
import 'styled_text.dart';
import 'dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GredientContainer extends StatelessWidget {
  const GredientContainer(this.color1, this.color2, {super.key});

  //constructor function
  const GredientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.red;

//initialization work
  // const GredientContainer(
  //     {super.key, required this.colors}); // accepting as named parameter

  // const GredientContainer.purple({super.key})
  //     : color1 = Colors.deepOrange,
  //       color2 = Colors.deepPurple;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container( 
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
