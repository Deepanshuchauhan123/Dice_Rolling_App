import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changedicenumber() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('Images/dice$leftdicenumber.png'),
              ),
              onPressed: () {
                changedicenumber();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('Images/dice$rightdicenumber.png'),
              ),
              onPressed: () {
                changedicenumber();
              },
            ),
          ),
        ],
      ),
    );
  }
}
