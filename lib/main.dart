import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophoneapp());
}
class Xylophoneapp extends StatelessWidget {
  void playsound(int sound){
    final player = AudioCache();
    player.play('note$sound.wav');
  }
  Expanded builtkey({Color color, int sound}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          playsound(sound);
        }
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
               builtkey(color: Colors.red,sound:1),
               builtkey(color: Colors.orange,sound:2),
                builtkey(color: Colors.yellow,sound:3),
                builtkey(color: Colors.green,sound:4),
                 builtkey(color: Colors.blue,sound:5),
                 builtkey(color: Colors.indigo,sound:6),
              builtkey(color: Colors.purple,sound:7),
            ],
          ),
        ),
      ),
    );
  }
}

