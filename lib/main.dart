import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Widget buildKey({int soundNum, Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNum);
        },
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
              buildKey(soundNum: 1, color: Colors.red),
              buildKey(soundNum: 2, color: Colors.orange),
              buildKey(soundNum: 3, color: Colors.yellow),
              buildKey(soundNum: 4, color: Colors.green),
              buildKey(soundNum: 5, color: Colors.teal),
              buildKey(soundNum: 6, color: Colors.blue),
              buildKey(soundNum: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
