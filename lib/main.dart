import 'dart:collection';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget buildKey(Color c, int n) {
    return Expanded(
      child: Container(
        // height: 100.0,
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          child: const Text(''),
          onPressed: () {
            playSound('note$n.wav');
          },
        ),
      ),
    );
  }

  playSound(String s) {
    final player = AudioPlayer();
    player.play(AssetSource(s));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.redAccent, 1),
              buildKey(Colors.orangeAccent, 2),
              buildKey(Colors.yellowAccent, 3),
              buildKey(Colors.lightGreenAccent, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.blueAccent, 6),
              buildKey(Colors.purpleAccent, 7),
              buildKey(Colors.purple.shade900, 8),
            ],
          ),
        ),
      ),
    );
  }
}
