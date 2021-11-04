import 'package:flutter/material.dart';
import 'page1.dart';

class results extends StatelessWidget {
  var c1;
  results({required this.c1});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: new Text(
            "",
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
            ],
          ),
        ),
      ),
    );
  }
}
