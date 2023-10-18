import 'dart:math';
import 'package:flutter/material.dart';

final randamizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRolle = 2;

// //named parameters
//   GredientContainer({key}): super(key:key );

  //final List<Color> colors;

  void rollDice() {
    setState(() {
      // currentDiceRolle = Random().nextInt(6) + 1; // 0 - 5
      currentDiceRolle = randamizer.nextInt(6) + 1; //Object creates once
      print('Changing image...$currentDiceRolle');
    });
  }

  @override
  Widget build(context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min, // centered vertically
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRolle.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 25,
                )),
            child: const Text('Roll Dice Roll')),
      ],
    );
  }
}
