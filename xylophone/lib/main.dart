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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => playSound(1),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.red,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                  child: const SizedBox(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => playSound(2),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.orange,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                  child: const SizedBox(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => playSound(3),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.yellow,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                  child: const SizedBox(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => playSound(4),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.green,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                  child: const SizedBox(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => playSound(5),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                  child: const SizedBox(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => playSound(6),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.indigo,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                  child: const SizedBox(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => playSound(7),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color(0xff9400D3),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                  child: const SizedBox(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
