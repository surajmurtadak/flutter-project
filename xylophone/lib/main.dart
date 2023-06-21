import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playSound(int num) async {
    final player = AudioPlayer();
    await player.play(AssetSource('sound$num.wav'));
  }

  Expanded playSoundBtn({int? soundCode, Color? colorCode}) => Expanded(
        child: TextButton(
          onPressed: () => playSound(soundCode!),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: colorCode,
            shape:
                const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: const SizedBox(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSoundBtn(soundCode: 1, colorCode: Colors.red),
              playSoundBtn(soundCode: 2, colorCode: Colors.orange),
              playSoundBtn(soundCode: 3, colorCode: Colors.yellow),
              playSoundBtn(soundCode: 4, colorCode: Colors.green),
              playSoundBtn(soundCode: 5, colorCode: Colors.blue),
              playSoundBtn(soundCode: 6, colorCode: Colors.indigo),
              playSoundBtn(soundCode: 7, colorCode: const Color(0xff9400D3)),
            ],
          ),
        ),
      ),
    );
  }
}
