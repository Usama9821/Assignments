import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:random_password_generator/random_password_generator.dart';
import 'package:labfinalproject/homepage.dart';
import 'package:labfinalproject/passgen.dart';
import 'dart:math';

bool _isWithLetters = true;
bool _isWithUppercase = false;
bool _isWithNumbers = false;
bool _isWithSpecial = false;
double _numberCharPassword = 8;
String newPassword = '';
Color _color = Colors.blue;
String isOk = '';
TextEditingController _passwordLength = TextEditingController();
final password = RandomPasswordGenerator();

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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checkbox(
                  'Upper Case',
                  (bool value) {
                    _isWithUppercase = value;
                    setState(() {});
                  },
                  _isWithUppercase,
                  value: null,
                  onChanged: (bool? value) {},
                ),
                Checkbox(
                  'Lower Case',
                  (bool value) {
                    _isWithLetters = value;
                    setState(() {});
                  },
                  _isWithLetters,
                  value: null,
                  onChanged: (bool? value) {},
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checkbox(
                  'Symbols',
                  (bool value) {
                    _isWithSpecial = value;
                    setState(() {});
                  },
                  _isWithSpecial,
                  value: null,
                  onChanged: (bool? value) {},
                ),
                Checkbox(
                  'Numbers',
                  (bool value) {
                    _isWithNumbers = value;
                    setState(() {});
                  },
                  _isWithNumbers,
                  value: null,
                  onChanged: (bool? value) {},
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _passwordLength,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Enter Length',
                  labelStyle: TextStyle(color: Colors.blue),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
                onPressed: () {
                  if (_passwordLength.text.trim().isNotEmpty)
                    _numberCharPassword =
                        double.parse(_passwordLength.text.trim());

                  newPassword = password.randomPassword(
                      letters: _isWithLetters,
                      numbers: _isWithNumbers,
                      passwordLength: _numberCharPassword,
                      specialChar: _isWithSpecial,
                      uppercase: _isWithUppercase);

                  print(newPassword);
                  double passwordstrength =
                      password.checkPassword(password: newPassword);
                  if (passwordstrength < 0.3) {
                    _color = Colors.red;
                    isOk = 'This password is weak!';
                  } else if (passwordstrength < 0.7) {
                    _color = Colors.blue;
                    isOk = 'This password is Good';
                  } else {
                    _color = Colors.green;
                    isOk = 'This passsword is Strong';
                  }

                  setState(() {});
                },
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Generator Password',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            if (newPassword.isNotEmpty && newPassword != null)
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      isOk,
                      style: TextStyle(color: _color, fontSize: 25),
                    ),
                  ),
                ),
              ),
            if (newPassword.isNotEmpty && newPassword != null)
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      newPassword,
                      style: TextStyle(color: _color, fontSize: 25),
                    ),
                  ),
                ),
              ),
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
  final numlength = 32;
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

  return List.generate(numlength, (index) {
    final indexRandom = Random.secure().nextInt(chars.length);
    return chars[indexRandom];
  }).join('');
}
