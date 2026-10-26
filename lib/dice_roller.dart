//import
import 'dart:math';
//math

import 'package:flutter/material.dart';
//import

final randomizer = Random();
//widget
//const
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
//roll
  @override
  //override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}//ovrride
//class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
//roll
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
//set
  @override
  //widget
  //build
  //build
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      //image
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        //button
        //box
        const SizedBox(height: 20),
        //button
        TextButton(
          //box
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              //font
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
