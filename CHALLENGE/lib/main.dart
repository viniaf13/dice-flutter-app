import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballState = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballState = answerRandomizer();
                });
              },
              child: Image.asset('images/ball$ballState.png'),
            ),
          ),
        ],
      ),
    );
  }
}

int answerRandomizer() {
  int result = Random().nextInt(5) + 1;
  return result;
}
