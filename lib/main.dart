import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dices"),
          backgroundColor: Colors.blue,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int LiftDiceNumber = 1;
  int RightDiceNumber = 1;

  void ChingeDice() {
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
      LiftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
              onPressed: () {
                ChingeDice();
              },
              child: Image.asset("images/dice$LiftDiceNumber.png")),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              ChingeDice();
            },
            child: Image.asset("images/dice$RightDiceNumber.png"),
          ),
        ),
      ]),
    );
  }
}
