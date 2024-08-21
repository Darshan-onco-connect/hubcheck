import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRolls extends StatefulWidget {
  const DiceRolls({super.key});

  @override
  State<DiceRolls> createState() {
    return _DiceRolls();
  }
}

class _DiceRolls extends State<DiceRolls> {
  var imageNumber = 1;

  void rollAction() {
    setState(() {
      imageNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'lib/assets/images/dice-$imageNumber.png',
          width: 200,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: rollAction,
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ],
    );
  }
}
