import 'package:flutter/material.dart';
import 'package:xylophone_app/xylo.dart';
import 'xylo.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String c1 = 'red';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Colors'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              autofocus: false,
              keyboardType: TextInputType.name,
              onChanged: (text) {
                c1 = text;
              },
            ),
            Expanded(
              child: new ElevatedButton(
                style: ButtonStyle(
                  overlayColor: getColor(
                    Colors.red,
                    Colors.greenAccent,
                  ),
                ),
                onPressed: () {},
                child: Text(''),
              ),
            ),
            Expanded(
              child: new ElevatedButton(
                style: ButtonStyle(
                  overlayColor: getColor(
                    Colors.green,
                    Colors.blue,
                  ),
                ),
                onPressed: () {},
                child: Text(''),
              ),
            ),
            Expanded(
              child: new ElevatedButton(
                style: ButtonStyle(
                  overlayColor: getColor(
                    Colors.black54,
                    Colors.yellow,
                  ),
                ),
                onPressed: () {},
                child: Text(''),
              ),
            ),
            Expanded(
              child: new ElevatedButton(
                style: ButtonStyle(
                  overlayColor: getColor(
                    Colors.pink,
                    Colors.teal,
                  ),
                ),
                onPressed: () {},
                child: Text(''),
              ),
            ),
            Expanded(
              child: new ElevatedButton(
                style: ButtonStyle(
                  overlayColor: getColor(
                    Colors.lightBlue,
                    Colors.redAccent,
                  ),
                ),
                onPressed: () {},
                child: Text(''),
              ),
            ),
            Expanded(
              child: new ElevatedButton(
                style: ButtonStyle(
                  overlayColor: getColor(
                    Colors.red,
                    Colors.greenAccent,
                  ),
                ),
                onPressed: () {},
                child: Text(''),
              ),
            ),
            // Center(
            //   child: FlatButton(
            //     child: Text(
            //       'Start',
            //       style: TextStyle(fontSize: 0, color: Colors.black),
            //     ),
            //     color: Colors.limeAccent,
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (BuildContext) {
            //             return xylo(c1: c1);
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColor);
}
