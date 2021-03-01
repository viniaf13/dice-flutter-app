import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.blue[400],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = rollDice();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = rollDice();
                });
              },
              child: Image.asset(('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}

class DicePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 1;
    int rightDiceNumber = 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                leftDiceNumber = rollDice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rightDiceNumber = rollDice();
              },
              child: Image.asset(('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}

int rollDice() {
  var rnd = Random();
  int result = 1 + rnd.nextInt(6);
  print(result);
  return result;
}
