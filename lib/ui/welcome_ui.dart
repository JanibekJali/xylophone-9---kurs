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
            // newMethod2(Colors.blue, 'Me', Colors.red),
            // newMethod3(Colors.teal),
            // newMethod(Colors.teal, 'Sol', Colors.red),
            // newMethod(Colors.green, 'Lya', Colors.red),
            // newMethod(Colors.orange, 'Si', Colors.red),
            // newMethod(Colors.pink, 'ef', Colors.red),
            NotaWidget(
              containerTus: Colors.amber,
              title: 'Do',
              notaNumber: '1',
            ),
            NotaWidget(
              containerTus: Colors.red,
              title: 'Re',
              notaNumber: '2',
            ),
            NotaWidget(
              containerTus: Colors.pink,
              title: 'Me',
              notaNumber: '3',
            ),
            NotaWidget(
              containerTus: Colors.teal,
              title: 'Fa',
              notaNumber: '4',
            ),
            NotaWidget(
              containerTus: Colors.blue,
              title: 'Sol',
              notaNumber: '5',
            ),
            NotaWidget(
              containerTus: Colors.black,
              title: 'Lya',
              notaNumber: '6',
            ),
            NotaWidget(
              containerTus: Colors.green,
              title: 'Si',
              notaNumber: '7',
            ),
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
  Expanded newMethod2(
    Color? containerTus,
    String? text,
    Color? textColor,
  ) {
    return Expanded(
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
  final String? title;
  final String? notaNumber;
  // null != pustoi
  // newMethod2(Color? containerTus,  )
  const NotaWidget({
    super.key,
    this.containerTus,
    this.title,
    this.notaNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/notes/note_$notaNumber.wav"),
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
            title!,
            style: const TextStyle(
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
