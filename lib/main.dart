import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List colors = [
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green[700],
    Colors.yellow,
    Colors.orange,
    Colors.red
  ];

  Expanded makeButton(int soundNumber) {
    return Expanded(
      child: FlatButton(
        child: Text(
          "Note $soundNumber",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: colors[soundNumber - 1],
        onPressed: () {
          final player = new AudioCache();
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              makeButton(1),
              makeButton(2),
              makeButton(3),
              makeButton(4),
              makeButton(5),
              makeButton(6),
              makeButton(7),
            ],
          ),
        ),
      ),
    );
  }
}
