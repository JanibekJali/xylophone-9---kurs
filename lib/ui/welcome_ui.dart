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
          children: const [
            // newMethod1(
            //     containerTus: Colors.teal,
            //     text: 'Do',
            //     textColor: Colors.white,
            //     noteNumber: '1'),
            // newMethod1(
            //     containerTus: Colors.red,
            //     text: 'Re',
            //     textColor: Colors.amber,
            //     noteNumber: '2'),
            // newMethod1(
            //     containerTus: Colors.black,
            //     text: 'Me',
            //     textColor: Colors.amber,
            //     noteNumber: '3'),
            // newMethod1(
            //     containerTus: Colors.green,
            //     text: 'Fa',
            //     textColor: Colors.white,
            //     noteNumber: '4'),
            // newMethod1(
            //     containerTus: Colors.pink,
            //     text: 'Sol',
            //     textColor: Colors.amber,
            //     noteNumber: '2'),
            // newMethod1(
            //     containerTus: Colors.blue,
            //     text: 'Lya',
            //     textColor: Colors.amber,
            //     noteNumber: '5'),
            // newMethod1(
            //     containerTus: Colors.green,
            //     text: 'Si',
            //     textColor: Colors.amber,
            //     noteNumber: '6'),
            // newMethod1(
            //     containerTus: Colors.white,
            //     text: 'Do',
            //     textColor: Colors.amber,
            //     noteNumber: '7'),
            // // newMethod2(Colors.blue, 'Me', Colors.red),
            // newMethod3(Colors.teal),
            // newMethod(Colors.teal, 'Sol', Colors.red),
            // newMethod(Colors.green, 'Lya', Colors.red),
            // newMethod(Colors.orange, 'Si', Colors.red),
            // newMethod(Colors.pink, 'ef', Colors.red),
            NotaWidget(containerTus: Colors.amber),
            NotaWidget(containerTus: Colors.red),
            NotaWidget(containerTus: Colors.pink),
          ],
        ),
      ),
    );
  }

  // {} - Aty bar metod, berbei kosok dele bolot
  Expanded newMethod1({
    Color? containerTus,
    String? text,
    @required Color? textColor,
    String? noteNumber,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/notes/note_$noteNumber.wav"),
            autoStart: true,
            showNotification: true,
          );
          // final AudioPlayer audioPlayer = AudioPlayer();
          // audioPlayer.play('assets/notes/note_1.wav');
        },
        child: Container(
          width: double.infinity,
          color: containerTus,
          child: Text(
            'Note:$text ',
            style: TextStyle(
              fontSize: 30,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  // () - aty jok metod, birok sozsuz berish kerek
  // Expanded newMethod2(Color? containerTus, String? text, Color? textColor, ) {
  //   return Expanded(
  //     child: InkWell(
  //       onTap: () {
  //         AssetsAudioPlayer.newPlayer().open(
  //           Audio("assets/notes/note_1.wav"),
  //           autoStart: true,
  //           showNotification: true,
  //         );
  //         // final AudioPlayer audioPlayer = AudioPlayer();
  //         // audioPlayer.play('assets/notes/note_1.wav');
  //       },
  //       child: Container(
  //         width: double.infinity,
  //         color: containerTus,
  //         child: Text(
  //           'Note:$text ',
  //           style: TextStyle(
  //             fontSize: 30,
  //             color: textColor,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

// aty jok - birok suragan parametrdi berbei koisok dele ishtei beret
  // Expanded newMethod3([Color? containerTus, String? text, Color? textColor]) {
  //   return Expanded(
  //     child: InkWell(
  //       onTap: () {
  //         AssetsAudioPlayer.newPlayer().open(
  //           Audio("assets/notes/note_1.wav"),
  //           autoStart: true,
  //           showNotification: true,
  //         );
  //         // final AudioPlayer audioPlayer = AudioPlayer();
  //         // audioPlayer.play('assets/notes/note_1.wav');
  //       },
  //       child: Container(
  //         width: double.infinity,
  //         color: containerTus,
  //         child: Text(
  //           'Note:$text ',
  //           style: TextStyle(
  //             fontSize: 30,
  //             color: textColor,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class NotaWidget extends StatelessWidget {
  final Color? containerTus;

  const NotaWidget({
    this.containerTus,
  });
  // newMethod2(Color? containerTus,  )

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/notes/note_2.wav"),
            autoStart: true,
            showNotification: true,
          );
          // final AudioPlayer audioPlayer = AudioPlayer();
          // audioPlayer.play('assets/notes/note_1.wav');
        },
        child: Container(
          width: double.infinity,
          color: containerTus,
          child: const Text(
            'Note: misal ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// DRY - Do not repeat yourself - kaitalaba
