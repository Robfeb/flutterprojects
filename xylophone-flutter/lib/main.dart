import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int note) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$note.wav'));
  }

  Expanded buildKey(int note, Color color, String text) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          playSound(note);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.red, 'DO'),
                buildKey(2, Colors.orange, 'RE'),
                buildKey(3, Colors.yellow, 'MI'),
                buildKey(4, Colors.lightGreen, 'FA'),
                buildKey(5, Colors.green, 'SOL'),
                buildKey(6, Colors.teal, 'LA'),
                buildKey(7, Colors.purple, 'SI'),
              ]),
        ),
      ),
    );
  }
}
