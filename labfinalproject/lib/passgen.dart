import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class passgenerator extends StatefulWidget {
  const passgenerator({Key? key}) : super(key: key);

  @override
  State<passgenerator> createState() => _passgeneratorState();
}

class _passgeneratorState extends State<passgenerator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const <Widget>[
          Text('Welcome to the Password Generator app'),
        ],
      ),
    );
  }
}
