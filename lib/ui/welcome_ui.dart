import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:audioplayer/audioplayer.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WelcomeUI extends StatelessWidget {
  const WelcomeUI();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            newMethod(Colors.pink, 'Do', Colors.white),
            newMethod(Colors.red, 'Re', Colors.amber),
            newMethod(Colors.blue, 'Me', Colors.red),
            newMethod(Colors.black, 'Fa', Colors.red),
            newMethod(Colors.teal, 'Sol', Colors.red),
            newMethod(Colors.green, 'Lya', Colors.red),
            newMethod(Colors.orange, 'Si', Colors.red),
            newMethod(Colors.pink, 'Do', Colors.red),
            Expanded(
              child: InkWell(
                onTap: () {
                  AssetsAudioPlayer.newPlayer().open(
                    Audio("assets/notes/note_1.wav"),
                    autoStart: true,
                    showNotification: true,
                  );
                  // final AudioPlayer audioPlayer = AudioPlayer();
                  // audioPlayer.play('assets/notes/note_1.wav');
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: const Text(
                    'misal',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded newMethod(Color tus, String text, Color color) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: tus,
        child: Text(
          text,
          style: TextStyle(fontSize: 30, color: color),
        ),
      ),
    );
  }
}

// DRY - Do not repeat yourself - kaitalaba
