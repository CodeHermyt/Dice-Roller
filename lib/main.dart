import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ran1 = 1,ran2=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        elevation: 10,
        title: Text(
          'Dicee',
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        ran1 = _generateRandomNumber();
                        
                      });
                    },
                    child: Image.asset('assets/images/dice$ran1.png'))),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        ran2 = _generateRandomNumber();
                      });
                    },
                    child: Image.asset('assets/images/dice$ran2.png'))),
          ],
        ),
      ),
    );
  }

  int _generateRandomNumber() {
    return Random().nextInt(6) + 1;
  }
}
