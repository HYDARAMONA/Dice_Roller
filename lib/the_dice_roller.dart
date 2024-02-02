import 'package:flutter/material.dart';
import 'dart:math';

class TheDiceRoller extends StatefulWidget {
  const TheDiceRoller({super.key});
  @override
  State<TheDiceRoller> createState() {
    return _TheDiceRollerState();
  }
}

class _TheDiceRollerState extends State<TheDiceRoller> {
  var rollDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var newRoll = Random().nextInt(6) + 1; //from 1 to 6
      rollDiceImage = 'assets/images/dice-$newRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(width: 200, rollDiceImage),
        // SizedBox(height: 30),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(30),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
