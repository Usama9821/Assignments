import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playnote(int num) {
    final player = new AudioCache();
    player.play('not$num.wav');
  }

  Expanded playbutton(Color color, int number) {
    return Expanded(
      child: FlatButton(
        child: Text(
          '',
          style: TextStyle(fontSize: 0, color: Colors.black),
        ),
        color: color,
        onPressed: () {
          playnote(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: new Text(
            "Xylophone",
          ),
          elevation: 4.0,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //For some reason TextButton not working here but flatbutton works perfect.
              playbutton(Colors.red, 1),
              playbutton(Colors.greenAccent, 2),
              playbutton(Colors.blue, 3),
              playbutton(Colors.grey, 4),
              playbutton(Colors.yellow, 5),
              playbutton(Colors.pinkAccent, 6),
              playbutton(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
