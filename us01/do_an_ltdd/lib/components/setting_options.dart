import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

class Setting_Options extends StatefulWidget {
  const Setting_Options({super.key});

  @override
  State<Setting_Options> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Setting_Options> {
  bool isPlaying = false;
  double value = 0;
  final player = AudioPlayer();
  Duration? duration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bai.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              const Text(
                "Tùy chọn cài đặt",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  width: 200,
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        Icon(Icons.store),
                        const Text('Thường ngày'),
                      ],
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blueAccent)),
                  )),
              Container(
                  width: 200,
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        const Icon(Icons.music_note),
                        const Text('Âm thanh'),
                      ],
                    ),
                    onPressed: () {
                      player.play('nhac.mp3');
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blueAccent)),
                  )),
              Container(
                  width: 200,
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        const Icon(Icons.music_note),
                        const Text('tắc Âm thanh'),
                      ],
                    ),
                    onPressed: () {
                      player.pause();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blueAccent)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
