import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(TunesApp());
}

class TunesApp extends StatelessWidget{

  Expanded createWidget(Color c, String sound, String soundName){
    return Expanded(
      child: FlatButton(
        color: c,
        child: Text(soundName),
        onPressed: (){
          stopAudio();
          playsound('$sound.mp3');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  createWidget(Colors.white, 'guzarish', 'Guzarish'),
                  createWidget(Colors.amberAccent, 'teri_ore', 'Teri Ore'),
                  createWidget(Colors.orangeAccent, 'abhi_mujhme_kahi','Abhi Mujhme Kahin'),
                  createWidget(Colors.orange, 'ek_pyar_ka_nagma','Ek Pyar Ka Nagma Hai'),
                  createWidget(Colors.deepOrangeAccent, 'lag_ja_gale', 'Lag Ja Gale'),
                  createWidget(Colors.deepOrange, 'tera_hone_laga_hu', 'Tera Hone Laga Hu'),
                  createWidget(Colors.red, 'piya_ore_piya', 'Piya Ore Piya'),
                ]
            ),
          ),
        ),
      ),
    );
  }
}

AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
bool play = false;
bool stop = true;

playsound(sound) {
  if (play == false || stop == true) {
    audio.play(sound);
    play = true;
    stop = false;
  }
}

stopAudio() {
  if (play == true && stop == false) {
    newPlayer.stop();
    play = false;
    stop = true;
  }
}
