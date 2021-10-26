import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'homepage.dart';

class xylo extends StatelessWidget {
  void playnote(int num) {
    final player = new AudioCache();
    //player.load('not$num.wav');
    player.play('not$num.wav');
  }

  Expanded playbutton(Color color, int number) {
    return Expanded(
      child: new FlatButton(
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

  final String c1;
  xylo({required this.c1});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              FlatButton(
                child: Text(
                  c1,
                  style: TextStyle(fontSize: 0, color: Colors.black),
                ),
                color: Colors.black54,
                onPressed: () {},
              ),
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
