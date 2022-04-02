import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Row(children: [
          xylophoneButton(1, Colors.yellow),
          xylophoneButton(2, Colors.black),
          xylophoneButton(3, Colors.purple),
          xylophoneButton(4, Colors.blue),
          xylophoneButton(5, Colors.orange),
          xylophoneButton(6, Colors.red),
          xylophoneButton(7, Colors.lightGreen),
        ])));
  }

  xylophoneButton(int note, Color color) {
    return Expanded(
      child: Container(
        height: double.infinity,
        child: FlatButton(
            color: color,
            child: Text(""),
            onPressed: () {
              AudioPlayer().play('assets/note$note.wav');
            }),
      ),
    );
  }
}
