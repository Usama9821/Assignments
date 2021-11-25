import 'dart:math';

import 'package:flutter/material.dart';

const activatecolor = Colors.red;
const deactivatecolor = Colors.white;
const matchingcolor = Colors.green;

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  var first = Random().nextInt(5) + 1;
  var second = Random().nextInt(5) + 1;
  var third = Random().nextInt(5) + 1;
  var fourth = Random().nextInt(5) + 1;
  var fifth = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Matching Game'),
            ),
            ListTile(
              title: const Text('Number'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Alphabet'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Matching Game'),
      ),
      body: Center(
        child: Table(
          children: [
            TableRow(
              children: [
                Column(children: [
                  Text('Column 1', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('Column 2', style: TextStyle(fontSize: 20.0))
                ]),
              ],
            ),
            TableRow(
              children: [
                Column(children: [
                  Text('$first', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('$third', style: TextStyle(fontSize: 20.0))
                ]),
              ],
            ),
            TableRow(
              children: [
                Column(children: [
                  Text('$second', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('$fourth', style: TextStyle(fontSize: 20.0))
                ]),
              ],
            ),
            TableRow(
              children: [
                Column(children: [
                  Text('$third', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('$fifth', style: TextStyle(fontSize: 20.0))
                ]),
              ],
            ),
            TableRow(
              children: [
                Column(children: [
                  Text('$fourth', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('$second', style: TextStyle(fontSize: 20.0))
                ]),
              ],
            ),
            TableRow(
              children: [
                Column(children: [
                  Text('$fifth', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('$first', style: TextStyle(fontSize: 20.0))
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
