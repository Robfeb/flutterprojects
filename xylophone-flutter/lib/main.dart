import 'dart:io';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class NoteScreen {
  int note() {}
  Color color() {}
  String text() {}
}

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    void audioPlayerHandler(AudioPlayerState value) => print('state => $value');
    final player = AudioCache();
    final AudioPlayer audioPlayer = AudioPlayer();
    if (Platform.isIOS) {
      audioPlayer.monitorNotificationStateChanges(audioPlayerHandler);
    }
    player.play('note$note.wav');
    player.clearCache();
  }

  Expanded buildKey(int note, Color color, String text) {
    return Expanded(
      child: FlatButton(
        color: color,
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
