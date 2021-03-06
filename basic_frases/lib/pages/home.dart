import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioCache = AudioCache(
    prefix: 'assets/audio/',
  );

  void playSound(int index) {
    audioCache.load(phrasesData[index].path);
    audioCache.play(phrasesData[index].path);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Phrases'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: phrasesData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 30.0,
        ),
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
            onPressed: () {
              playSound(index);
            },
            child: Text(phrasesData[index].name),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

final List<PhrasesData> phrasesData = <PhrasesData>[
  PhrasesData('salut', 'salut.mp3'),
  PhrasesData('salut (germana)', 'hallo.mp3'),
  PhrasesData('ma numesc', 'manumesc.mp3'),
  PhrasesData('ma numesc (germana)', 'ichheisse.mp3'),
  PhrasesData('ce faci?', 'cefaci.mp3'),
  PhrasesData('ce faci? (germana)', 'wastustdu.mp3'),
  PhrasesData('sunt bine!', 'suntbine.mp3'),
  PhrasesData('sunt bine! (germana)', 'esgehtmirgut.mp3'),
];
