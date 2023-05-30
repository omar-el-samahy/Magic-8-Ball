import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      title: 'Ask Me Anything',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          centerTitle: true,
          title: const Text(
            'Magic 8 Ball',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
        body: const SafeArea(child: magic()),
      ),
    ),
  );
}
class magic extends StatefulWidget {
  const magic({super.key});

  @override
  State<magic> createState() => _magic();
}

class _magic extends State<magic> {
  int bn = 1;
  void rand() {
    setState(
      () {
        bn = Random().nextInt(5) + 1;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                rand();
              },
              child: Image.asset('images/ball$bn.png'),
            ),
          ),
        ],
      ),
    );
  }
}