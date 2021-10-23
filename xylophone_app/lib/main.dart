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
            //For some reason TextButton not working here but flatbutton works perfect.
            child: new FlatButton(
              child: Text(
                'Play tone',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              color: Colors.blueAccent,
              onPressed: () {
                final player = AudioCache();
                player.play('mann.mp3');
              },
            ),
          ),
        ),
      ),
    );
  }
}
