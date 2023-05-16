import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlay(int n) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$n.wav'));
  }

  Expanded buildButton({num, color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
        ),
        onPressed: () {
          soundPlay(num);
        },
        child: Text('Press Me!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text(
              "Xylophone App :)",
              textScaleFactor: 1.4,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildButton(num: 1, color: Colors.brown),
            buildButton(num: 2, color: Colors.green),
            buildButton(num: 3, color: Colors.pinkAccent),
            buildButton(num: 4, color: Colors.blueGrey),
            buildButton(num: 5, color: Colors.lightBlueAccent),
            buildButton(num: 6, color: Colors.yellow),
            buildButton(num: 7, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
