import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labfinalproject/homepage.dart';
import 'package:labfinalproject/hard.dart';

final controller = TextEditingController();

class passgenerator extends StatefulWidget {
  @override
  void dispose() {
    controller.dispose();
  }

  @override
  State<passgenerator> createState() => _passgeneratorState();
}

class _passgeneratorState extends State<passgenerator> {
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
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('HARD'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const hardpage()),
                );
              },
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return homepage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Simple Password Generator'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Generate Simple Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
            ),
            const SizedBox(height: 12),
            buildButton(),
          ],
        ),
      ),
    );
  }
}

buildButton() {
  final backgroundColor = MaterialStateColor.resolveWith(
    (states) =>
        states.contains(MaterialState.pressed) ? Colors.blue : Colors.black,
  );
  return ElevatedButton(
    style: ButtonStyle(backgroundColor: backgroundColor),
    onPressed: () {
      final password = generatePassword();
      controller.text = password;
    },
    child: Text('Generate Password'),
  );
}

String generatePassword(
    {bool hasletters = true, bool hasnumbers = true, bool hassymbols = true}) {
  final length = 8;
  final lowercaseleters = 'abcdefghijklmnopqrstuvwxyz';
  final uppercaseleters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final numbers = '0123456789';
  final symbols = '!@#+=\$%&?';

  String chars = '';
  if (hasletters) chars += '$lowercaseleters$uppercaseleters';
  if (hasnumbers) chars += '$numbers';
  if (hassymbols) chars += '$symbols';

  return List.generate(length, (index) {
    final indexRandom = Random.secure().nextInt(chars.length);
    return chars[indexRandom];
  }).join('');
}
