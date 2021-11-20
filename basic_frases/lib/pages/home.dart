import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> phrases = <String>[
    'salut',
    'salut germana',
    'ma numesc',
    'ma numesc germana',
    'ce faci?',
    'ce faci? germana',
    'sunt bine',
    'sunt bine germana'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Phrases'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: phrases.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 30.0,
        ),
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
            onPressed: () {
              setState(() {

              });
            },
            child: Text(phrases[index]),
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
