import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playnote(int num) {
    final player = new AudioCache();
    player.play('not$num.wav');
  }

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
                  playnote(1);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.greenAccent,
                onPressed: () {
                  playnote(2);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  playnote(3);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.yellowAccent,
                onPressed: () {
                  playnote(4);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.blueAccent,
                onPressed: () {
                  playnote(5);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.purpleAccent,
                onPressed: () {
                  playnote(6);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.tealAccent,
                onPressed: () {
                  playnote(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
