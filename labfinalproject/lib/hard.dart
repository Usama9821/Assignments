import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hardpage extends StatefulWidget {
  const hardpage({Key? key}) : super(key: key);

  @override
  State<hardpage> createState() => _hardpageState();
}

class _hardpageState extends State<hardpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Text('Hard Page'),
        ],
      ),
    );
  }
}
