import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget _buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          _playSound(soundNumber);
        },
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildKey(soundNumber: 1, color: Colors.red),
              _buildKey(soundNumber: 2, color: Colors.pink),
              _buildKey(soundNumber: 3, color: Colors.orange),
              _buildKey(soundNumber: 4, color: Colors.yellow),
              _buildKey(soundNumber: 5, color: Colors.green),
              _buildKey(soundNumber: 6, color: Colors.blue),
              _buildKey(soundNumber: 7, color: Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
