import 'package:flutter/material.dart';
import 'passgen.dart';

void main() {
  runApp(const passApp());
}

class passApp extends StatelessWidget {
  const passApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
                title: const Text('SIMPLE'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('HARD'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return passgenerator();
                  }));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(),
        body: passgenerator(),
      ),
    );
  }
}
