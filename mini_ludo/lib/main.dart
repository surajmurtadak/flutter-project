import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftButtonNumber = 7;
  int rightButtonNumber = 8;
  String instruction = 'Tab on Dice to start game';
  int score1 = 0;
  int score2 = 0;
  String win = '';
  void clear(){
    score1 =0;
    score2=0;
  }
  void throughDice(){
    setState(() {
      leftButtonNumber= Random().nextInt(5) + 1;
      rightButtonNumber= Random().nextInt(5) + 1;
      score1 = score1 + leftButtonNumber;
      score2 = score2 + rightButtonNumber;
      if( score1 == 50 && score2 == 50 ) {
        win = 'Match draw';
      }
      else {
        if (score1 > score2 && score1 >= 50) {
          win = 'The winner is Player 1';
        }
        else if( score2 > score1 && score2>= 50) {
          win ='The winner is Player 2';
        }
      }
        instruction='';
    });
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
          backgroundColor: const Color(0XFF37474F),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                win,
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                   'Player 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
               ),
               Text(
                   'Player 2',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20.0,
                 ),
               ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Score: $score1',
                  style: const TextStyle(
                    color: Color(0XFFDEDEDE),
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'Score: $score2',
                  style: const TextStyle(
                    color: Color(0XFFDEDEDE),
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                          throughDice();
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
            const SizedBox(
              height: 20.0,
            ),
            Text(
              instruction,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
