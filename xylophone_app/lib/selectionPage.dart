import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'xylo.dart';
import 'customize_color.dart';

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('XYLOPHONE'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 200.0,
                  height: 50.0,
                ),
              ),

              Center(
                child: Expanded(
                  child: ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => defaultSetting(),
                              ));
                        },
                        child: Text('PLAY')),
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  width: 200.0,
                  height: 50.0,
                ),
              ),

              //Play game
              // Center(
              //   child: Expanded(
              //     child: ButtonTheme(
              //       minWidth: 200.0,
              //       height: 100.0,
              //       child: RaisedButton(
              //           onPressed: () {
              //             Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) => musicSelection(),
              //                 ));
              //           },
              //           child: Text('Customize Music')),
              //     ),
              //   ),
              // ),

              Center(
                child: SizedBox(
                  width: 200.0,
                  height: 50.0,
                ),
              ),

              //Customize colors
              Center(
                child: Expanded(
                  child: ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => colorCustomize(),
                              ));
                        },
                        child: Text('Customize Colors')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  defaultSetting() {}
}
