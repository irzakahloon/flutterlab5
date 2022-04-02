import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ball = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.blue.shade900),
      backgroundColor: Colors.blue,
      body: FlatButton(
        onPressed: () {
          setState(() {
            Random random = Random();
            ball = random.nextInt(4) + 1;
            print("I got clicked, ball: $ball");
          });
        },
        child: Image.asset('assets/ball$ball.png'),
      ),
    );
  }
}
