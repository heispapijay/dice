import 'package:flutter/material.dart';
import 'dart:math';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;

  void rollDice() {
    setState(() {
      diceRoll = randomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 200,
          //height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 28),
              foregroundColor: Colors.white),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
