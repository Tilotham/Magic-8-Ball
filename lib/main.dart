import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: 'Bitter'),
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
          ),
        ),
        backgroundColor: Colors.teal[600],
      ),
      body: Ball(),
      backgroundColor: Colors.teal[300],
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
          print('$ballNumber got clicked');
        },
        child: Center(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
