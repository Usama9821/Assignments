import 'package:flutter/material.dart';
import 'AlphabetGame.dart';
import 'NumberGame.dart';
import 'Homepage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.indigo,
          drawer: Drawer(
            child: Container(
              color: Colors.black12,
              child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("Images/images.jpg"),
                        fit: BoxFit.cover,
                      )),
                      child: null,
                    ),
                    ListTile(
                      title: const Text('Match Numbers'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => NumberGame()));
                        // Update the state of the app.
                        // ...
                      },
                    ),
                    ListTile(
                      title: const Text('Match Alphabets'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => AlphabetGame()));
                        // Update the state of the app.
                        // ...
                      },
                    ),
                    ListTile(
                      title: const Text('Home'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Homepage()));
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ]),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Matching Game Homepage",
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Select your Game mode',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                    fontSize: 35,
                  ),
                ),
              ),
              const SizedBox(
                width: 200.0,
                height: 50.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => NumberGame()));
                  },
                  child: const Text(
                    'Number Game',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              const SizedBox(
                width: 200.0,
                height: 10.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => AlphabetGame()));
                  },
                  child: const Text(
                    'Alphabet Game',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
