import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int number) {
    final player = new AudioCache();
    player.play('not$number.wav');
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
                  playsound(1);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.greenAccent,
                onPressed: () {
                  playsound(2);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  playsound(3);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.yellowAccent,
                onPressed: () {
                  playsound(4);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.blueAccent,
                onPressed: () {
                  playsound(5);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.purpleAccent,
                onPressed: () {
                  playsound(6);
                },
              ),
              FlatButton(
                child: Text(
                  'Play tone',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                color: Colors.tealAccent,
                onPressed: () {
                  playsound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
