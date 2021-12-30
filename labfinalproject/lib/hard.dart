import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labfinalproject/homepage.dart';
import 'package:labfinalproject/passgen.dart';
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';

final FirebaseDatabase database = FirebaseDatabase.instance;
final controller = TextEditingController();
var sliderval = 2;

class hardpage extends StatefulWidget {
  const hardpage({Key? key}) : super(key: key);

  @override
  State<hardpage> createState() => _hardpageState();
}

class _hardpageState extends State<hardpage> {
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
              title: Text('Simple'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => passgenerator()),
                );
              },
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return homepage();
                }));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Hard Password Generator'),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Select Length'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderval.toString(),
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Slider(
                  value: sliderval.toDouble(),
                  min: 2.0,
                  max: 32.0,
                  activeColor: Colors.black,
                  inactiveColor: Colors.blue,
                  onChanged: (double newValue) {
                    setState(() {
                      sliderval = newValue.round();
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              readOnly: true,
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    final data = ClipboardData(text: controller.text);
                    Clipboard.setData(data);

                    final snackBar = SnackBar(
                        content: Text(
                          'Password Coppied',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.blue);

                    ScaffoldMessenger.of(context)
                      ..removeCurrentSnackBar()
                      ..showSnackBar(snackBar);
                  },
                ),
              ),
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
      void passsaver() {
        database.reference().child("Saved_Passwords").set(
          {"Password": password},
        );
      }
    },
    child: Text('Generate Password'),
  );
}

String generatePassword(
    {bool hasletters = true, bool hasnumbers = true, bool hassymbols = true}) {
  //final numlength = 32;
  final uppercaselength = 2;
  final lowercaselength = 2;
  final symbolscaselength = 2;

  final lowercaseleters = 'abcdefghijklmnopqrstuvwxyz';
  final uppercaseleters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final numbers = '0123456789';
  final symbols = '!@#+=\$%&?';

  String chars = '';
  if (hasletters) chars += '$lowercaseleters$uppercaseleters';
  if (hasnumbers) chars += '$numbers';
  if (hassymbols) chars += '$symbols';

  return List.generate(sliderval, (index) {
    final indexRandom = Random.secure().nextInt(chars.length);
    return chars[indexRandom];
  }).join('');
}
