import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: magicBall(),
    );
  }
}

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int clickBall = 1;

  void tapButton() {
    setState(() {
      clickBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Ace Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue.shade300,
      body: Container(
        child: Center(
          child: TextButton(
            child: Image.asset("images/ball${clickBall}.png"),
            onPressed: () {
              tapButton();
              print("i have been pressed!");
            },
          ),
        ),
      ),
    );
  }
}
