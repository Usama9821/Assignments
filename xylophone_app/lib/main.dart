import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //For some reason TextButton not working here but flatbutton works perfect.
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.blueAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('not.wav');
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.greenAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('not1.wav');
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('not2.wav');
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.yellowAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('not3.wav');
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.blueAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('not5.wav');
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.purpleAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('not6.wav');
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.tealAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('not7.wav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
