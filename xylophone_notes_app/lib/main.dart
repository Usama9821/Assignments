import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: new FlatButton(
              child: Text(
                'Play tone',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              color: Colors.blueAccent,
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
              // child: new TextButton(
              //   child: Text(
              //     'Play tone',
              //     style: TextStyle(fontSize: 30, color: Colors.black),
              //   ),
              //   style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.blue)),
              //   onPressed: () {
              //     final player = AudioCache();
              //     player.play('note1.wav');
              //   },
            ),
          ),
        ),
      ),
    );
  }
}
