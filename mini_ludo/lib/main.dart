import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftButtonNumber = 7;
  int rightButtonNumber = 8;
  void throughDice(){
    leftButtonNumber= Random().nextInt(5) + 1;
    rightButtonNumber= Random().nextInt(5) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFF607D8B),
        appBar: AppBar(
          title: const Center(
            child: Text('Mini Ludo'),
          ),
          backgroundColor: const Color(0xFF37474F),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            throughDice();
                          });
                        },
                        child: Image.asset('images/dice-$leftButtonNumber.png'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            throughDice();
                          });
                        },
                        child: Image.asset('images/dice-$rightButtonNumber.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
