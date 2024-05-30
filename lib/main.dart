import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XyloApp());

class XyloApp extends StatelessWidget {
  const XyloApp({super.key});

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(
      {int soundNumber = 1, Color color = Colors.white, String ibala = ''}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          ibala,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, color: Colors.red, ibala: 'Do'),
              buildKey(soundNumber: 2, color: Colors.yellow, ibala: 'Re'),
              buildKey(soundNumber: 3, color: Colors.green, ibala: 'Mi'),
              buildKey(soundNumber: 4, color: Colors.blue, ibala: 'Fa'),
              buildKey(soundNumber: 5, color: Colors.purple, ibala: 'So'),
              buildKey(soundNumber: 6, color: Colors.orange, ibala: 'La'),
              buildKey(soundNumber: 7, color: Colors.teal, ibala: 'Ti'),
              buildKey(soundNumber: 1, color: Colors.redAccent, ibala: 'Do'),
            ],
          ),
        ),
      ),
    );
  }
}
