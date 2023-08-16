import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  void playSound(int soundNumber) async{
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color,required int soundNum}){
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () async{
          playSound(soundNum);
        },
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
              buildKey(color: Colors.red,soundNum: 1),
              buildKey(color: Colors.orange,soundNum: 2),
              buildKey(color: Colors.yellow,soundNum: 3),
              buildKey(color: Colors.green,soundNum: 4),
              buildKey(color: Colors.teal,soundNum: 5),
              buildKey(color: Colors.blue,soundNum: 6),
              buildKey(color: Colors.purple,soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
